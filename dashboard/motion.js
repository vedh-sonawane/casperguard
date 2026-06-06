/**
 * CasperGuard Motion Engine
 * Spring-physics scroll reveals, smart header, parallax, nav micro-interactions.
 * GPU-only transforms — no layout-affecting properties during animation.
 */
(function () {
  "use strict";

  const REDUCED = window.matchMedia("(prefers-reduced-motion: reduce)").matches;

  /* ── Spring integrator (critically damped-ish) ───────────────── */
  class Spring {
    constructor(value = 0, { stiffness = 320, damping = 32, mass = 1 } = {}) {
      this.value = value;
      this.target = value;
      this.velocity = 0;
      this.stiffness = stiffness;
      this.damping = damping;
      this.mass = mass;
      this._raf = null;
      this._listeners = new Set();
    }

    setTarget(target) {
      this.target = target;
      this._start();
    }

    snap(value) {
      this.value = value;
      this.target = value;
      this.velocity = 0;
      this._emit();
    }

    on(fn) {
      this._listeners.add(fn);
      return () => this._listeners.delete(fn);
    }

    _emit() {
      this._listeners.forEach((fn) => fn(this.value));
    }

    _start() {
      if (this._raf) return;
      let last = performance.now();
      const tick = (now) => {
        const dt = Math.min((now - last) / 1000, 0.032);
        last = now;
        const displacement = this.value - this.target;
        const springForce = -this.stiffness * displacement;
        const dampForce = -this.damping * this.velocity;
        const accel = (springForce + dampForce) / this.mass;
        this.velocity += accel * dt;
        this.value += this.velocity * dt;
        this._emit();
        if (Math.abs(displacement) > 0.04 || Math.abs(this.velocity) > 0.04) {
          this._raf = requestAnimationFrame(tick);
        } else {
          this.value = this.target;
          this.velocity = 0;
          this._emit();
          this._raf = null;
        }
      };
      this._raf = requestAnimationFrame(tick);
    }
  }

  /* ── Smart sticky header ─────────────────────────────────────── */
  class SmartHeader {
    constructor(el) {
      this.el = el;
      this.spring = new Spring(0, { stiffness: 420, damping: 38 });
      this.scrollSpring = new Spring(0, { stiffness: 180, damping: 26 });
      this.lastY = 0;
      this.accum = 0;
      this.hidden = false;
      this.ticking = false;

      this.spring.on((v) => {
        this.el.style.setProperty("--header-translate", `${v}%`);
      });
      this.scrollSpring.on((v) => {
        this.el.style.setProperty("--header-blur", v.toFixed(3));
        this.el.classList.toggle("is-scrolled", v > 0.08);
        this.el.classList.toggle("is-compact", v > 0.35);
      });

      window.addEventListener("scroll", () => this._onScroll(), { passive: true });
      this._onScroll(true);
    }

    _onScroll(initial = false) {
      if (REDUCED) return;
      if (this.ticking) return;
      this.ticking = true;
      requestAnimationFrame(() => {
        const y = window.scrollY;
        const delta = y - this.lastY;
        this.lastY = y;

        const blurTarget = Math.min(1, y / 120);
        this.scrollSpring.setTarget(blurTarget);

        if (initial) {
          this.ticking = false;
          return;
        }

        if (y < 48) {
          this.hidden = false;
          this.accum = 0;
          this.spring.setTarget(0);
        } else if (delta > 2) {
          this.accum = Math.min(80, this.accum + delta);
          if (this.accum > 24 && !this.hidden) {
            this.hidden = true;
            this.spring.setTarget(-100);
          }
        } else if (delta < -2) {
          this.accum = 0;
          if (this.hidden) {
            this.hidden = false;
            this.spring.setTarget(0);
          }
        }

        this.ticking = false;
      });
    }

    show() {
      this.hidden = false;
      this.spring.setTarget(0);
    }
  }

  /* ── Scroll reveal with staggered springs ────────────────────── */
  class RevealEngine {
    constructor() {
      this.observer = null;
      this.springs = new WeakMap();
    }

    init() {
      this._markRevealables();
      if (REDUCED) {
        document.querySelectorAll("[data-reveal]").forEach((el) => {
          el.style.setProperty("--reveal-progress", "1");
          el.classList.add("is-revealed", "is-settled");
        });
        return;
      }

      this.observer?.disconnect();
      this.observer = new IntersectionObserver(
        (entries) => entries.forEach((e) => this._onIntersect(e)),
        { root: null, rootMargin: "0px 0px -6% 0px", threshold: [0, 0.12, 0.25] }
      );

      document.querySelectorAll("[data-reveal]").forEach((el) => {
        if (!el.classList.contains("is-revealed")) {
          el.style.setProperty("--reveal-progress", "0");
          this.observer.observe(el);
        }
      });
    }

    _markRevealables() {
      const activePage = document.querySelector(".page.active");
      if (!activePage) return;

      activePage.querySelectorAll(
        ".section-head, .stat-card, .hero-banner, .asset-card, .timeline-panel, " +
        ".profile-card, .analytics-card, .portfolio-card, .agent-card, .contract-card, " +
        ".pipe-step, .table-panel, .feed-panel, .pipeline-panel, .search-wide, .link-row"
      ).forEach((el, i) => {
        if (!el.hasAttribute("data-reveal")) {
          el.setAttribute("data-reveal", "");
          el.setAttribute("data-reveal-index", String(i % 12));
        }
      });

      activePage.querySelectorAll(".narrative-block").forEach((block) => {
        if (!block.hasAttribute("data-reveal")) block.setAttribute("data-reveal", "block");
      });
    }

    _onIntersect(entry) {
      const el = entry.target;
      if (!entry.isIntersecting || el.classList.contains("is-revealed")) return;

      el.classList.add("is-revealed");
      this.observer.unobserve(el);

      const delay = parseInt(el.getAttribute("data-reveal-delay") || "0", 10)
        + parseInt(el.getAttribute("data-reveal-index") || "0", 10) * 48;

      const spring = new Spring(0, { stiffness: 340, damping: 34 });
      this.springs.set(el, spring);

      spring.on((v) => {
        el.style.setProperty("--reveal-progress", v.toFixed(4));
        if (v >= 0.999) el.classList.add("is-settled");
      });

      setTimeout(() => spring.setTarget(1), delay);
    }

    refresh() {
      document.querySelectorAll("[data-reveal].is-revealed:not(.is-settled)").forEach((el) => {
        el.classList.remove("is-revealed", "is-settled");
        el.style.setProperty("--reveal-progress", "0");
      });
      this.init();
    }

    resetPage() {
      document.querySelectorAll(".page [data-reveal]").forEach((el) => {
        el.classList.remove("is-revealed", "is-settled");
        el.style.setProperty("--reveal-progress", "0");
      });
      this.init();
    }
  }

  /* ── Parallax depth layers ───────────────────────────────────── */
  class ParallaxField {
    constructor() {
      this.layers = [...document.querySelectorAll("[data-parallax-depth]")];
      this.spring = new Spring(0, { stiffness: 120, damping: 22 });
      this.targetY = 0;
      this.ticking = false;

      if (REDUCED || !this.layers.length) return;

      this.spring.on((v) => {
        this.layers.forEach((layer) => {
          const depth = parseFloat(layer.dataset.parallaxDepth || "0.1");
          const y = v * depth;
          layer.style.transform = `translate3d(0, ${y.toFixed(2)}px, 0)`;
        });
      });

      window.addEventListener("scroll", () => this._onScroll(), { passive: true });
    }

    _onScroll() {
      if (this.ticking) return;
      this.ticking = true;
      requestAnimationFrame(() => {
        this.spring.setTarget(window.scrollY);
        this.ticking = false;
      });
    }
  }

  /* ── Nav magnetic hover + fluid underline ────────────────────── */
  class NavInteractions {
    constructor() {
      this._enhance();
    }

    _enhance() {
      document.querySelectorAll(".nav-link, .nav-sub-link").forEach((btn) => {
        if (btn.dataset.enhanced) return;
        btn.dataset.enhanced = "1";
        btn.classList.add("nav-interactive");

        const underline = document.createElement("span");
        underline.className = "nav-underline";
        underline.setAttribute("aria-hidden", "true");
        btn.appendChild(underline);

        if (REDUCED) return;

        const mx = new Spring(0.5, { stiffness: 260, damping: 28 });
        const my = new Spring(0.5, { stiffness: 260, damping: 28 });
        const glow = new Spring(0, { stiffness: 300, damping: 30 });

        mx.on((v) => btn.style.setProperty("--nav-mx", v.toFixed(4)));
        my.on((v) => btn.style.setProperty("--nav-my", v.toFixed(4)));
        glow.on((v) => btn.style.setProperty("--nav-glow", v.toFixed(4)));

        btn.addEventListener("mousemove", (e) => {
          const r = btn.getBoundingClientRect();
          mx.setTarget((e.clientX - r.left) / r.width);
          my.setTarget((e.clientY - r.top) / r.height);
          glow.setTarget(1);
        });

        btn.addEventListener("mouseleave", () => {
          mx.setTarget(0.5);
          my.setTarget(0.5);
          glow.setTarget(0);
        });
      });
    }
  }

  /* ── Public API ──────────────────────────────────────────────── */
  let header, reveals, parallax, nav;

  function init() {
    const topbar = document.getElementById("topbar");
    if (topbar) header = new SmartHeader(topbar);
    reveals = new RevealEngine();
    parallax = new ParallaxField();
    nav = new NavInteractions();
    reveals.init();
  }

  function refresh() {
    nav?._enhance();
    reveals?.refresh();
  }

  function onPageChange() {
    window.scrollTo({ top: 0, behavior: "auto" });
    header?.show();
    reveals?.resetPage();
    if (parallax) {
      parallax.layers = [...document.querySelectorAll("[data-parallax-depth]")];
    }
  }

  window.CasperMotion = { init, refresh, onPageChange };

  if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", init);
  } else {
    init();
  }
})();
