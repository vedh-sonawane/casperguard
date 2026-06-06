import json
from datetime import datetime, timezone
from pathlib import Path

DASHBOARD_RESULTS_PATH = Path(__file__).resolve().parents[2] / "dashboard" / "results.json"


def _load_results() -> dict:
    if DASHBOARD_RESULTS_PATH.exists():
        return json.loads(DASHBOARD_RESULTS_PATH.read_text(encoding="utf-8"))
    return {
        "updated_at": None,
        "agent_status": "idle",
        "x402_calls": 0,
        "contracts": {},
        "assets": [],
        "feed": [],
    }


def _save_results(data: dict) -> None:
    DASHBOARD_RESULTS_PATH.parent.mkdir(parents=True, exist_ok=True)
    DASHBOARD_RESULTS_PATH.write_text(
        json.dumps(data, indent=2),
        encoding="utf-8",
    )


def init_dashboard(contracts: dict | None = None) -> None:
    data = _load_results()
    data["agent_status"] = "running"
    data["updated_at"] = datetime.now(timezone.utc).isoformat()
    if contracts:
        data["contracts"] = {**data.get("contracts", {}), **contracts}
    _save_results(data)


def append_feed(message: str) -> None:
    data = _load_results()
    feed = data.setdefault("feed", [])
    feed.insert(0, {
        "time": datetime.now().strftime("%H:%M:%S"),
        "message": message,
    })
    data["feed"] = feed[:50]
    _save_results(data)


def record_asset_result(
    asset: dict,
    deliberation: dict,
    gate_result: str,
    deploy_hash: str | None,
) -> None:
    data = _load_results()
    gate_decision = "ACCEPTED" if gate_result.startswith("ACCEPTED") else "REJECTED"

    entry = {
        "id": asset["id"],
        "name": asset["name"],
        "type": asset["type"].replace("_", " ").title(),
        "issuer": asset.get("issuer", ""),
        "value_usd": asset.get("value_usd", 0),
        "risk_score": deliberation.get("avg_risk_score", 0),
        "credit_score": deliberation.get("credit_score", 0),
        "sanctions_clear": deliberation.get("sanctions_clear", False),
        "jurisdiction_eligible": deliberation.get("jurisdiction_eligible", False),
        "consensus_reached": deliberation.get("consensus_reached", False),
        "votes_for": deliberation.get("votes_for", 0),
        "votes_against": deliberation.get("votes_against", 0),
        "gate_decision": gate_decision,
        "deploy_hash": deploy_hash or "",
    }

    assets = [a for a in data.get("assets", []) if a.get("id") != asset["id"]]
    assets.append(entry)
    data["assets"] = sorted(assets, key=lambda a: a["id"])
    data["x402_calls"] = data.get("x402_calls", 0) + 4
    data["updated_at"] = datetime.now(timezone.utc).isoformat()
    _save_results(data)

    append_feed(f"DeFi Gate: {asset['id']} {gate_decision}")
    if deploy_hash:
        append_feed(f"CASPER TX: attestation {deploy_hash[:8]}… posted successfully")


def finish_dashboard() -> None:
    data = _load_results()
    data["agent_status"] = "idle"
    data["updated_at"] = datetime.now(timezone.utc).isoformat()
    _save_results(data)
