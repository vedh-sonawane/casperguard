const CSPR_LIVE = "https://testnet.cspr.live";
const API_BASE = window.location.origin;

const BREADCRUMBS = {
  dashboard: "Overview",
  assets: "RWA Assets",
  agents: "Agents",
  contracts: "Contracts",
  activity: "Live Feed",
};

const DONUT_COLORS = ["#8b5cf6", "#60a5fa", "#4ade80", "#fb923c", "#f472b6"];

const AGENT_INFO = [
  { id: "risk", name: "Risk Agent", desc: "Sanctions exposure & market volatility via x402.", port: 8001, endpoint: "/sanctions/" },
  { id: "compliance", name: "Compliance Agent", desc: "OFAC checks & jurisdiction eligibility.", port: 8001, endpoint: "/jurisdiction/" },
  { id: "treasury", name: "Treasury Agent", desc: "Credit scores & treasury risk analysis.", port: 8002, endpoint: "/credit/" },
];

const ART_CLASS = {
  invoice: "art-invoice",
  "real estate": "art-estate",
  bond: "art-bond",
};

let state = {
  data: null,
  theme: localStorage.getItem("casperguard-theme") || "charcoal",
  currentPage: "dashboard",
  feedCleared: false,
  pollTimer: null,
  selectedDay: 0,
};

function $(sel) { return document.querySelector(sel); }
function $$(sel) { return document.querySelectorAll(sel); }

function formatUsd(n) {
  return new Intl.NumberFormat("en-US", { style: "currency", currency: "USD", maximumFractionDigits: 0 }).format(n || 0);
}

function deployUrl(hash) {
  if (!hash || hash.length < 16) return null;
  return `${CSPR_LIVE}/deploy/${hash}`;
}

function contractUrl(hash) {
  if (!hash || hash.length < 16) return null;
  return `${CSPR_LIVE}/contract-package/${hash}`;
}

function riskClass(score) {
  if (score >= 70) return "badge-red";
  if (score >= 40) return "badge-amber";
  return "badge-green";
}

function gateBadge(decision) {
  const ok = decision === "ACCEPTED";
  return `<span class="badge ${ok ? "badge-green" : "badge-red"}">${decision}</span>`;
}

function compliancePct(asset) {
  if (asset.gate_decision === "ACCEPTED") return Math.max(10, 100 - asset.risk_score);
  return Math.min(40, 100 - asset.risk_score);
}

function showToast(msg, duration = 3200) {
  const toast = $("#toast");
  toast.textContent = msg;
  toast.classList.remove("hidden");
  clearTimeout(showToast._timer);
  showToast._timer = setTimeout(() => toast.classList.add("hidden"), duration);
}

// ── Theme ────────────────────────────────────────────────────────

function applyTheme(theme) {
  state.theme = theme;
  document.documentElement.setAttribute("data-theme", theme);
  localStorage.setItem("casperguard-theme", theme);
  const btn = $("#theme-toggle");
  btn.textContent = theme === "charcoal" ? "Chalk" : "Charcoal";
}

function toggleTheme() {
  applyTheme(state.theme === "charcoal" ? "chalk" : "charcoal");
  showToast(`Switched to ${state.theme === "charcoal" ? "Charcoal" : "Chalk"} mode`);
}

// ── Navigation ───────────────────────────────────────────────────

function navigate(page) {
  state.currentPage = page;

  $$(".nav-link[data-page]").forEach((el) => {
    el.classList.toggle("active", el.dataset.page === page || (page === "activity" && el.dataset.page === "activity"));
  });
  $$(".nav-sub-link[data-page]").forEach((el) => {
    el.classList.toggle("active", el.dataset.page === page);
  });

  $$(".page").forEach((el) => {
    el.classList.toggle("active", el.id === `page-${page}`);
  });

  const grid = $("#body-grid");
  const showRail = page === "dashboard";
  grid.classList.toggle("full-width", !showRail);

  $("#bc-current").textContent = BREADCRUMBS[page] || "Overview";

  const sub = $("#nav-sub-overview");
  if (sub) sub.classList.toggle("open", page === "dashboard" || page === "activity");

  window.CasperMotion?.onPageChange();
}

// ── API ──────────────────────────────────────────────────────────

async function fetchStatus() {
  try {
    const res = await fetch(`${API_BASE}/api/status`);
    if (res.ok) {
      const data = await res.json();
      data.static_host = false;
      return data;
    }
  } catch {
    /* fall through to static results.json (Vercel / static hosting) */
  }

  const res = await fetch(`${API_BASE}/results.json`);
  if (!res.ok) throw new Error("Failed to load status");
  const data = await res.json();
  data.server_ok = true;
  data.agent_running = false;
  data.static_host = true;
  return data;
}

async function runComplianceCycle() {
  const res = await fetch(`${API_BASE}/api/run`, { method: "POST" });
  const body = await res.json();
  if (!res.ok) throw new Error(body.error || "Failed to start cycle");
  return body;
}

// ── Donut & metrics ──────────────────────────────────────────────

function renderDonutChart(assets) {
  const svg = $("#donut-chart");
  const total = assets.reduce((s, a) => s + (a.value_usd || 0), 0) || 1;
  let offset = 0;

  const segments = assets.map((a, i) => {
    const pct = (a.value_usd || 0) / total;
    const seg = { pct, color: DONUT_COLORS[i % DONUT_COLORS.length], offset, name: a.name };
    offset += pct * 283;
    return seg;
  });

  svg.innerHTML = segments.map((s) => `
    <circle cx="60" cy="60" r="45" fill="none"
      stroke="${s.color}" stroke-width="13"
      stroke-dasharray="${s.pct * 283} 283"
      stroke-dashoffset="${-s.offset + 70}"
      transform="rotate(-90 60 60)"
      stroke-linecap="round"/>
  `).join("");

  const compliant = assets.filter((a) => a.gate_decision === "ACCEPTED").length;
  const health = assets.length ? Math.round((compliant / assets.length) * 100) : 0;
  const avgRisk = assets.length
    ? Math.round(assets.reduce((s, a) => s + a.risk_score, 0) / assets.length)
    : 0;

  $("#donut-pct").textContent = `${health}%`;
  $("#portfolio-total").textContent = formatUsd(total);
  $("#donut-count").textContent = `${assets.length} RWA assets`;
  $("#profile-rank").textContent = compliant;
  $("#profile-avg").textContent = avgRisk;
  $("#profile-count").textContent = assets.length;

  const month = new Date().toLocaleString("en-US", { month: "long", year: "numeric" });
  $("#analytics-month").textContent = month;

  const sanctionsPct = assets.length
    ? Math.round(assets.filter((a) => a.sanctions_clear).length / assets.length * 100) : 0;
  const jurisdictionPct = assets.length
    ? Math.round(assets.filter((a) => a.jurisdiction_eligible).length / assets.length * 100) : 0;
  const gatePct = health;
  const onchainPct = assets.length
    ? Math.round(assets.filter((a) => a.deploy_hash?.length > 16).length / assets.length * 100) : 0;

  const bars = [
    { label: "Sanctions clear", pct: sanctionsPct, color: DONUT_COLORS[0] },
    { label: "Jurisdiction OK", pct: jurisdictionPct, color: DONUT_COLORS[1] },
    { label: "Gate accepted", pct: gatePct, color: DONUT_COLORS[2] },
    { label: "On-chain attested", pct: onchainPct, color: DONUT_COLORS[3] },
  ];

  $("#metric-bars").innerHTML = bars.map((b) => `
    <li>
      <div class="bar-head"><span>${b.label}</span><span>${b.pct}%</span></div>
      <div class="bar-track"><div class="bar-fill" style="width:${b.pct}%;background:${b.color}"></div></div>
    </li>
  `).join("");
}

// ── Asset cards (enrolment style) ────────────────────────────────

function renderAssetCards() {
  const assets = state.data?.assets || [];
  const container = $("#asset-cards");
  if (!assets.length) {
    container.innerHTML = `<p style="color:var(--text-muted);font-size:0.85rem;padding:1rem">No assets yet. Run a compliance cycle.</p>`;
    return;
  }

  container.innerHTML = assets.map((a, i) => {
    const pct = compliancePct(a);
    const art = ART_CLASS[a.type?.toLowerCase()] || "art-default";
    const txUrl = deployUrl(a.deploy_hash);
    return `
      <article class="asset-card" data-reveal data-reveal-index="${i}">
        <div class="asset-card-art ${art}"></div>
        <h3 class="asset-card-title">${a.name}</h3>
        <div class="asset-card-meta">
          <span>${a.type}</span>
          <span>${formatUsd(a.value_usd)}</span>
          <span>${a.votes_for}/${a.votes_for + a.votes_against} votes</span>
        </div>
        <div class="progress-wrap">
          <div class="progress-label"><span>Compliance score</span><span>${pct}%</span></div>
          <div class="progress-bar"><div class="progress-fill" style="width:${pct}%"></div></div>
        </div>
        <div class="asset-card-actions">
          ${txUrl
            ? `<a class="btn-primary" href="${txUrl}" target="_blank" rel="noopener noreferrer">View on Testnet ↗</a>`
            : `<button class="btn-primary" disabled type="button">Pending attestation</button>`}
          <button class="btn-outline btn-audit" data-id="${a.id}" type="button">Audit</button>
        </div>
      </article>
    `;
  }).join("");
}

// ── Timeline ─────────────────────────────────────────────────────

function renderDateChips() {
  const days = ["Today", "Yesterday", "Mon", "Tue", "Wed"];
  $("#date-chips").innerHTML = days.map((d, i) => `
    <button class="date-chip ${i === state.selectedDay ? "active" : ""}" data-day="${i}" type="button">${d}</button>
  `).join("");
}

function inferAvatars(message) {
  const avatars = [];
  if (/risk/i.test(message)) avatars.push("RA");
  if (/compliance|OFAC|jurisdiction/i.test(message)) avatars.push("CA");
  if (/treasury|credit/i.test(message)) avatars.push("TA");
  if (/CASPER|attestation|deploy/i.test(message)) avatars.push("⛓");
  if (!avatars.length) avatars.push("CG");
  const classes = ["t-avatar-risk", "t-avatar-compliance", "t-avatar-treasury", "t-avatar-casper"];
  return avatars.slice(0, 3).map((label, i) =>
    `<span class="t-avatar ${classes[i] || "t-avatar-casper"}">${label.slice(0, 2)}</span>`
  ).join("");
}

function renderTimeline() {
  const feed = state.feedCleared ? [] : (state.data?.feed || []);
  const timeline = $("#timeline");

  if (!feed.length) {
    timeline.innerHTML = `<div class="timeline-item"><span class="timeline-time">—</span><div class="timeline-body"><h4>No activity yet</h4><p>Run a compliance cycle to populate the timeline.</p></div></div>`;
    return;
  }

  timeline.innerHTML = feed.slice(0, 8).map((e, i) => {
    const title = e.message.split(":")[0] || "Event";
    const detail = e.message.includes(":") ? e.message.split(":").slice(1).join(":").trim() : e.message;
    return `
      <div class="timeline-item" data-reveal data-reveal-index="${i}">
        <span class="timeline-time">${e.time || "—"}</span>
        <div class="timeline-body">
          <h4>${title}</h4>
          <p>${detail}</p>
        </div>
        <div class="timeline-avatars">${inferAvatars(e.message)}</div>
      </div>
    `;
  }).join("");
}

// ── Stats ────────────────────────────────────────────────────────

function renderStats() {
  const assets = state.data?.assets || [];
  const compliant = assets.filter((a) => a.gate_decision === "ACCEPTED").length;
  const rejected = assets.length - compliant;
  $("#stat-compliant").textContent = compliant;
  $("#stat-rejected").textContent = rejected;
  $("#stat-x402").textContent = state.data?.x402_calls ?? 0;

  const running = state.data?.agent_status === "running" || state.data?.agent_running;
  const dot = $("#live-dot");
  if (dot) dot.style.background = running ? "var(--purple-bright)" : "var(--green)";
}

// ── Tables ───────────────────────────────────────────────────────

function assetRowCells(asset) {
  const txUrl = deployUrl(asset.deploy_hash);
  const contractLink = contractUrl(state.data?.contracts?.compliance_registry);
  return `
    <td><div class="asset-cell"><span class="asset-name">${asset.name}</span><span class="asset-id">${asset.id}</span></div></td>
    <td>${asset.type}</td>
    <td>${formatUsd(asset.value_usd)}</td>
    <td><span class="badge ${riskClass(asset.risk_score)}">${asset.risk_score}/100</span></td>
    <td><span class="badge ${asset.sanctions_clear ? "badge-green" : "badge-red"}">${asset.sanctions_clear ? "CLEAR" : "FLAGGED"}</span></td>
    <td><span class="badge ${asset.jurisdiction_eligible ? "badge-green" : "badge-red"}">${asset.jurisdiction_eligible ? "ELIGIBLE" : "BLOCKED"}</span></td>
    <td>${gateBadge(asset.gate_decision)}</td>
    <td>
      <div class="action-group">
        ${txUrl ? `<a class="btn-sm btn-sm-green" href="${txUrl}" target="_blank" rel="noopener noreferrer">Testnet ↗</a>` : ""}
        ${contractLink ? `<a class="btn-sm btn-sm-blue" href="${contractLink}" target="_blank" rel="noopener noreferrer">Contract ↗</a>` : ""}
        <button class="btn-sm btn-sm-purple btn-audit" data-id="${asset.id}" type="button">Audit</button>
        <button class="btn-sm btn-sm-orange btn-gate" data-id="${asset.id}" type="button">Gate</button>
      </div>
    </td>
  `;
}

function filterAssets(assets) {
  const query = ($("#asset-search")?.value || $("#global-search")?.value || "").trim().toLowerCase();
  const typeFilter = ($("#asset-filter")?.value || "all").toLowerCase();
  return assets.filter((a) => {
    const q = !query || a.name.toLowerCase().includes(query) || a.id.toLowerCase().includes(query) || (a.deploy_hash || "").includes(query);
    const t = typeFilter === "all" || a.type.toLowerCase() === typeFilter;
    return q && t;
  });
}

function renderAssetsTable() {
  const filtered = filterAssets(state.data?.assets || []);
  const tbody = $("#assets-table tbody");
  if (!tbody) return;
  tbody.innerHTML = filtered.length
    ? filtered.map((a) => `<tr>${assetRowCells(a)}</tr>`).join("")
    : `<tr><td colspan="8" style="text-align:center;padding:2rem;color:var(--text-muted)">No assets match.</td></tr>`;
}

function renderFeed() {
  const log = $("#feed-log");
  if (!log) return;
  if (state.feedCleared) {
    log.innerHTML = `<div class="feed-entry"><span class="feed-msg" style="color:var(--text-dim)">Feed cleared.</span></div>`;
    return;
  }
  const feed = state.data?.feed || [];
  log.innerHTML = feed.length
    ? feed.map((e) => `<div class="feed-entry"><span class="feed-time">${e.time || "—"}</span><span class="feed-msg">${e.message}</span></div>`).join("")
    : `<div class="feed-entry"><span class="feed-msg">No activity yet.</span></div>`;
}

function renderAgents() {
  const running = state.data?.agent_status === "running" || state.data?.agent_running;
  const pill = $("#agent-status-pill");
  if (pill) {
    pill.textContent = running ? "Running cycle…" : "Idle — ready";
    pill.className = `status-badge ${running ? "running" : ""}`;
  }
  $("#agent-cards").innerHTML = AGENT_INFO.map((a) => `
    <article class="agent-card">
      <h3>${a.name}</h3>
      <p>${a.desc}</p>
      <div class="agent-meta">
        <span>Port ${a.port}</span>
        <a href="http://localhost:${a.port}${a.endpoint}ASSET-GOOD" target="_blank" rel="noopener noreferrer">Test API ↗</a>
      </div>
    </article>
  `).join("");
}

function renderContracts() {
  const contracts = state.data?.contracts || {};
  const items = [
    { name: "Master Ecosystem", hash: contracts.master_deploy || "42ae6d68ff2d522e17cfc7c564379999aca31979b30502f2c4fa8bdc71999b06", type: "deploy" },
    { name: "Compliance Registry", hash: contracts.compliance_registry, type: "contract" },
    { name: "DeFi Gate", hash: contracts.defi_gate, type: "contract" },
  ].filter((c) => c.hash);

  $("#contract-cards").innerHTML = items.map((c) => {
    const url = c.type === "deploy" ? deployUrl(c.hash) : contractUrl(c.hash);
    return `
      <a class="contract-card" href="${url}" target="_blank" rel="noopener noreferrer">
        <h3>${c.name}</h3>
        <p>${c.hash}</p>
        <span class="btn-primary" style="display:inline-block;padding:0.4rem 0.85rem;font-size:0.75rem">Open on CSPR.live ↗</span>
      </a>
    `;
  }).join("");

  const master = contracts.master_deploy || "42ae6d68ff2d522e17cfc7c564379999aca31979b30502f2c4fa8bdc71999b06";
  const link = $("#link-master-deploy");
  if (link) link.href = deployUrl(master);
}

function renderAll() {
  renderStats();
  renderDonutChart(state.data?.assets || []);
  renderAssetCards();
  renderDateChips();
  renderTimeline();
  renderAssetsTable();
  renderFeed();
  renderAgents();
  renderContracts();
  window.CasperMotion?.refresh();
}

// ── Actions ──────────────────────────────────────────────────────

async function refreshData(showMsg = true) {
  try {
    state.data = await fetchStatus();
    renderAll();
    if (showMsg) {
      showToast(state.data.static_host ? "Loaded demo data" : "Dashboard refreshed");
    }
  } catch {
    showToast("Start the server: python dashboard/server.py");
  }
}

async function handleRunCycle() {
  const btn = $("#btn-run-cycle");
  btn.disabled = true;
  try {
    if (state.data?.static_host) {
      showToast("Run Cycle needs the Python server — clone the GitHub repo locally");
      return;
    }
    await runComplianceCycle();
    showToast("Compliance cycle started (~2 min)");
    navigate("activity");
    startPolling();
  } catch (err) {
    showToast(err.message);
  } finally {
    btn.disabled = false;
  }
}

function startPolling() {
  if (state.data?.static_host) return;
  clearInterval(state.pollTimer);
  state.pollTimer = setInterval(async () => {
    try {
      const prev = state.data?.updated_at;
      state.data = await fetchStatus();
      renderAll();
      if (state.data.agent_status === "idle" && prev !== state.data.updated_at) {
        showToast("Compliance cycle complete!");
        clearInterval(state.pollTimer);
      }
    } catch { /* ignore */ }
  }, 4000);
}

function handleAudit(assetId) {
  const asset = state.data?.assets?.find((a) => a.id === assetId);
  if (!asset) return;
  navigate("activity");
  showToast(`${asset.name}: risk ${asset.risk_score}/100, gate ${asset.gate_decision}`);
}

function handleGate(assetId) {
  const asset = state.data?.assets?.find((a) => a.id === assetId);
  if (!asset) return;
  showToast(asset.gate_decision === "ACCEPTED" ? `${asset.name} cleared` : `${asset.name} rejected`);
  if (asset.deploy_hash) window.open(deployUrl(asset.deploy_hash), "_blank", "noopener,noreferrer");
}

function handleGlobalSearch() {
  navigate("assets");
  renderAssetsTable();
}

function bindEvents() {
  $("#theme-toggle").addEventListener("click", toggleTheme);

  $$(".nav-link[data-page], .nav-sub-link[data-page]").forEach((btn) => {
    btn.addEventListener("click", () => navigate(btn.dataset.page));
  });

  document.querySelector(".brand")?.addEventListener("click", (e) => {
    e.preventDefault();
    navigate("dashboard");
  });

  $("#btn-run-cycle").addEventListener("click", handleRunCycle);
  $("#btn-refresh").addEventListener("click", () => refreshData(true));
  $("#btn-refresh-stats")?.addEventListener("click", () => refreshData(true));
  $("#btn-notifications").addEventListener("click", () => navigate("activity"));
  $("#btn-clear-feed")?.addEventListener("click", () => {
    state.feedCleared = true;
    renderFeed();
    renderTimeline();
    showToast("Feed cleared");
  });

  $$("[data-action='go-agents']").forEach((el) => el.addEventListener("click", () => navigate("agents")));
  $$("[data-action='go-assets']").forEach((el) => el.addEventListener("click", () => navigate("assets")));

  $("#global-search").addEventListener("input", handleGlobalSearch);
  $("#asset-search")?.addEventListener("input", renderAssetsTable);
  $("#asset-filter")?.addEventListener("change", renderAssetsTable);

  document.addEventListener("click", (e) => {
    if (e.target.classList.contains("btn-audit")) handleAudit(e.target.dataset.id);
    if (e.target.classList.contains("btn-gate")) handleGate(e.target.dataset.id);
    if (e.target.classList.contains("date-chip")) {
      state.selectedDay = parseInt(e.target.dataset.day, 10);
      renderDateChips();
      showToast(`Showing: ${e.target.textContent}`);
    }
  });

  $("#btn-workspace")?.addEventListener("click", () => {
    window.open("https://testnet.cspr.live", "_blank", "noopener,noreferrer");
  });

  document.addEventListener("keydown", (e) => {
    if ((e.metaKey || e.ctrlKey) && e.key === "/") {
      e.preventDefault();
      $("#global-search").focus();
    }
  });
}

async function init() {
  applyTheme(state.theme);
  bindEvents();
  await refreshData(false);
  if (!state.data?.static_host) startPolling();
}

init();
