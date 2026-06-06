import asyncio
from dataclasses import dataclass
from typing import List

@dataclass
class AgentVerdict:
    agent_name: str
    agent_type: str
    approve: bool
    risk_score: int
    sanctions_clear: bool
    credit_score: int
    jurisdiction_eligible: bool
    reason: str
    confidence: float

def deliberate(verdicts: List[AgentVerdict]) -> dict:
    print(f"\n  [DELIBERATION] {len(verdicts)} agents have voted")

    votes_for = [v for v in verdicts if v.approve]
    votes_against = [v for v in verdicts if not v.approve]

    avg_risk = int(sum(v.risk_score for v in verdicts) / len(verdicts))
    avg_confidence = sum(v.confidence for v in verdicts) / len(verdicts)

    sanctions_clear = all(v.sanctions_clear for v in verdicts)
    jurisdiction_eligible = all(v.jurisdiction_eligible for v in verdicts)
    credit_score = int(sum(v.credit_score for v in verdicts) / len(verdicts))

    consensus = len(votes_for) >= 2

    reasons = [v.reason for v in verdicts]
    combined_reason = " | ".join(reasons)

    print(f"  [DELIBERATION] Votes FOR: {len(votes_for)}, AGAINST: {len(votes_against)}")
    print(f"  [DELIBERATION] Avg risk score: {avg_risk}, Avg confidence: {avg_confidence:.2f}")
    print(f"  [DELIBERATION] Consensus reached: {consensus}")

    return {
        "consensus_reached": consensus,
        "approve": consensus,
        "avg_risk_score": avg_risk,
        "sanctions_clear": sanctions_clear,
        "credit_score": credit_score,
        "jurisdiction_eligible": jurisdiction_eligible,
        "reason": combined_reason,
        "confidence": avg_confidence,
        "votes_for": len(votes_for),
        "votes_against": len(votes_against),
    }