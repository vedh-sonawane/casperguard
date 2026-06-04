use odra::prelude::*;

#[odra::odra_type]
pub struct AgentRecord {
    pub name: String,
    pub agent_type: String,
    pub reputation_score: u32,
    pub total_attestations: u32,
    pub correct_attestations: u32,
    pub authorized: bool,
}

#[odra::odra_error]
pub enum RegistryError {
    NotOwner = 1,
}

#[odra::module]
pub struct AgentRegistry {
    agents: Mapping<Address, AgentRecord>,
    owner: Var<Address>,
}

#[odra::module]
impl AgentRegistry {
    #[odra(init)]
    pub fn init(&mut self) {
        self.owner.set(self.env().caller());
    }

    pub fn register_agent(&mut self, name: String, agent_type: String) {
        let caller = self.env().caller();
        let record = AgentRecord {
            name,
            agent_type,
            reputation_score: 100,
            total_attestations: 0,
            correct_attestations: 0,
            authorized: true,
        };
        self.agents.set(&caller, record);
    }

    pub fn get_agent(&self, addr: Address) -> Option<AgentRecord> {
        self.agents.get(&addr)
    }

    pub fn update_reputation(&mut self, addr: Address, was_correct: bool) {
        let caller = self.env().caller();
        let owner = self.owner.get().expect("Owner not initialized");
        
        if caller != owner {
            self.env().revert(RegistryError::NotOwner);
        }

        if let Some(mut record) = self.agents.get(&addr) {
            record.total_attestations += 1;
            if was_correct {
                record.correct_attestations += 1;
                if record.reputation_score < 200 {
                    record.reputation_score += 2;
                }
            } else {
                if record.reputation_score > 10 {
                    record.reputation_score -= 10;
                }
            }
            self.agents.set(&addr, record);
        }
    }

    pub fn is_authorized(&self, addr: Address) -> bool {
        if let Some(record) = self.agents.get(&addr) {
            record.authorized
        } else {
            false
        }
    }
}
