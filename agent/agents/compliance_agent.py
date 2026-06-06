import asyncio
from agent.core.x402_client import fetch_with_x402
from agent.core.deliberation import AgentVerdict

AGENT_ID = "compliance-agent-casperguard-v1"

async def analyze(asset_id: str) -> AgentVerdict:
    print(f"\n[COMPLIANCE AGENT] Analyzing asset: {asset_id}")

    sanctions = await fetch_with_x402(
        f"http://localhost:8001/sanctions/{asset_id}", AGENT_ID
    )
    jurisdiction = await fetch_with_x402(
        f"http://localhost:8003/jurisdiction/{asset_id}", AGENT_ID
    )

    sanctioned = sanctions.get("sanctioned", False)
    eligible = jurisdiction.get("eligible", False)
    jur = jurisdiction.get("jurisdiction", "UNKNOWN")

    risk_score = 0
    reasons = []

    if sanctioned:
        risk_score += 90
        reasons.append("OFAC sanctions match")
    if not eligible:
        risk_score += 50
        reasons.append(f"jurisdiction {jur} not eligible for DeFi")

    risk_score = min(risk_score, 100)
    approve = not sanctioned and eligible

    reason = ", ".join(reasons) if reasons else f"jurisdiction {jur} cleared"

    print(f"[COMPLIANCE AGENT] Score: {risk_score}, Approve: {approve}, Reason: {reason}")

    return AgentVerdict(
        agent_name="ComplianceAgent",
        agent_type="compliance",
        approve=approve,
        risk_score=risk_score,
        sanctions_clear=not sanctioned,
        credit_score=0,
        jurisdiction_eligible=eligible,
        reason=f"ComplianceAgent: {reason}",
        confidence=0.92,
    )