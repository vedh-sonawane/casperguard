import asyncio
from agent.core.x402_client import fetch_with_x402
from agent.core.deliberation import AgentVerdict

AGENT_ID = "treasury-agent-casperguard-v1"

async def analyze(asset_id: str) -> AgentVerdict:
    print(f"\n[TREASURY AGENT] Analyzing asset: {asset_id}")

    credit = await fetch_with_x402(
        f"http://localhost:8002/credit/{asset_id}", AGENT_ID
    )
    market = await fetch_with_x402(
        f"http://localhost:8003/market-volatility/{asset_id}", AGENT_ID
    )

    credit_score = credit.get("credit_score", 50)
    rating = credit.get("rating", "CCC")
    volatility = market.get("volatility_index", 0.5)

    risk_score = 0
    reasons = []

    if credit_score < 40:
        risk_score += 60
        reasons.append(f"very low credit {credit_score} ({rating})")
    elif credit_score < 65:
        risk_score += 30
        reasons.append(f"low credit {credit_score} ({rating})")

    if volatility > 0.6:
        risk_score += 20
        reasons.append("high market volatility")

    risk_score = min(risk_score, 100)
    approve = credit_score >= 60 and risk_score < 65

    reason = ", ".join(reasons) if reasons else f"credit {credit_score} ({rating}) acceptable"

    print(f"[TREASURY AGENT] Score: {risk_score}, Approve: {approve}, Reason: {reason}")

    return AgentVerdict(
        agent_name="TreasuryAgent",
        agent_type="treasury",
        approve=approve,
        risk_score=risk_score,
        sanctions_clear=True,
        credit_score=credit_score,
        jurisdiction_eligible=True,
        reason=f"TreasuryAgent: {reason}",
        confidence=0.78,
    )