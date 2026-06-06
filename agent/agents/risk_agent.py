import asyncio
from agent.core.x402_client import fetch_with_x402
from agent.core.deliberation import AgentVerdict

AGENT_ID = "risk-agent-casperguard-v1"

async def analyze(asset_id: str) -> AgentVerdict:
    print(f"\n[RISK AGENT] Analyzing asset: {asset_id}")

    sanctions = await fetch_with_x402(
        f"http://localhost:8001/sanctions/{asset_id}", AGENT_ID
    )
    market = await fetch_with_x402(
        f"http://localhost:8003/market-volatility/{asset_id}", AGENT_ID
    )

    sanctioned = sanctions.get("sanctioned", False)
    volatility = market.get("volatility_index", 0.5)

    risk_score = 0
    reasons = []

    if sanctioned:
        risk_score += 80
        reasons.append("asset is sanctioned")

    if volatility > 0.7:
        risk_score += 25
        reasons.append(f"high volatility {volatility:.2f}")
    elif volatility > 0.4:
        risk_score += 10
        reasons.append(f"medium volatility {volatility:.2f}")

    risk_score = min(risk_score, 100)
    approve = risk_score < 60 and not sanctioned

    reason = ", ".join(reasons) if reasons else "risk profile acceptable"

    print(f"[RISK AGENT] Score: {risk_score}, Approve: {approve}, Reason: {reason}")

    return AgentVerdict(
        agent_name="RiskAgent",
        agent_type="risk",
        approve=approve,
        risk_score=risk_score,
        sanctions_clear=not sanctioned,
        credit_score=0,
        jurisdiction_eligible=True,
        reason=f"RiskAgent: {reason}",
        confidence=0.85,
    )