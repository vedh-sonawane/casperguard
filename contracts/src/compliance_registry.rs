use odra::prelude::*;

#[odra::odra_type]
pub struct Attestation {
    pub asset_id: String,
    pub risk_score: u8,
    pub sanctions_clear: bool,
    pub credit_score: u32,
    pub jurisdiction_eligible: bool,
    pub reason: String,
    pub posted_by: Address,
    pub posted_at: u64,
    pub expires_at: u64,
    pub consensus_reached: bool,
    pub votes_for: u8,
    pub votes_against: u8,
}

#[odra::odra_type]
pub struct Vote {
    pub agent: Address,
    pub approve: bool,
    pub risk_score: u8,
    pub timestamp: u64,
}

#[odra::module]
pub struct ComplianceRegistry {
    attestations: Mapping<String, Attestation>,
    votes: Mapping<String, Vote>,
    vote_counts: Mapping<String, u32>,
    agent_registry: Var<Address>,
    owner: Var<Address>,
}

#[odra::module]
impl ComplianceRegistry {
    #[odra(init)]
    pub fn init(&mut self, agent_registry_addr: Address) {
        self.owner.set(self.env().caller());
        self.agent_registry.set(agent_registry_addr);
    }

    pub fn submit_vote(
        &mut self,
        asset_id: String,
        approve: bool,
        risk_score: u8,
        sanctions_clear: bool,
        credit_score: u32,
        jurisdiction_eligible: bool,
        reason: String,
        expires_hours: u64,
    ) {
        let caller = self.env().caller();
        let now = self.env().get_block_time();
        
        let vote = Vote {
            agent: caller,
            approve,
            risk_score,
            timestamp: now,
        };

        let current_count = self.vote_counts.get(&asset_id).unwrap_or(0);
        let next_index = current_count + 1;

        let vote_key = format!("{}-{}", asset_id, current_count);
        self.votes.set(&vote_key, vote);
        self.vote_counts.set(&asset_id, next_index);

        let mut votes_for: u8 = 0;
        let mut votes_against: u8 = 0;
        let mut total_risk: u32 = 0;

        for i in 0..next_index {
            let key = format!("{}-{}", asset_id, i);
            if let Some(v) = self.votes.get(&key) {
                if v.approve {
                    votes_for += 1;
                } else {
                    votes_against += 1;
                }
                total_risk += v.risk_score as u32;
            }
        }

        let avg_risk = if next_index > 0 {
            (total_risk / next_index) as u8
        } else {
            100
        };

        let consensus = next_index >= 2;

        let att = Attestation {
            asset_id: asset_id.clone(),
            risk_score: avg_risk,
            sanctions_clear,
            credit_score,
            jurisdiction_eligible,
            reason,
            posted_by: caller,
            posted_at: now,
            expires_at: now + (expires_hours * 3600 * 1000),
            consensus_reached: consensus,
            votes_for,
            votes_against,
        };

        self.attestations.set(&asset_id, att);
    }

    pub fn get_attestation(&self, asset_id: String) -> Option<Attestation> {
        self.attestations.get(&asset_id)
    }

    pub fn is_compliant(&self, asset_id: String) -> bool {
        if let Some(att) = self.attestations.get(&asset_id) {
            let now = self.env().get_block_time();
            att.consensus_reached 
                && att.sanctions_clear 
                && att.risk_score < 70 
                && att.jurisdiction_eligible 
                && att.expires_at > now
        } else {
            false
        }
    }
}
