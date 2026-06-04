use odra::prelude::*;

#[odra::odra_type]
pub struct DepositRecord {
    pub asset_id: String,
    pub depositor: Address,
    pub amount: u64,
    pub timestamp: u64,
    pub status: String,
}

#[odra::module]
pub struct DefiGate {
    deposits: Mapping<String, DepositRecord>,
    total_deposits: Var<u64>,
    owner: Var<Address>,
    compliance_contract: Var<Address>,
    deposit_count: Var<u32>,
}

#[odra::module]
impl DefiGate {
    #[odra(init)]
    pub fn init(&mut self, compliance_addr: Address) {
        self.owner.set(self.env().caller());
        self.compliance_contract.set(compliance_addr);
        self.total_deposits.set(0);
        self.deposit_count.set(0);
    }

    pub fn try_deposit(
        &mut self,
        asset_id: String,
        amount: u64,
        risk_score: u8,
        sanctions_clear: bool,
        jurisdiction_eligible: bool,
        consensus_reached: bool,
        expires_at: u64,
    ) -> String {
        let caller = self.env().caller();
        let now = self.env().get_block_time();

        if !consensus_reached {
            return String::from("REJECTED: no agent consensus yet");
        }
        if !sanctions_clear {
            return String::from("REJECTED: sanctions flag on asset");
        }
        if risk_score >= 70 {
            return String::from("REJECTED: risk score too high");
        }
        if !jurisdiction_eligible {
            return String::from("REJECTED: jurisdiction not eligible");
        }
        if expires_at < now {
            return String::from("REJECTED: compliance attestation expired");
        }

        let deposit_id = format!("{}-{}", asset_id, now);
        let record = DepositRecord {
            asset_id,
            depositor: caller,
            amount,
            timestamp: now,
            status: String::from("ACTIVE"),
        };
        self.deposits.set(&deposit_id, record);

        let total = self.total_deposits.get_or_default();
        self.total_deposits.set(total + amount);

        let count = self.deposit_count.get_or_default();
        self.deposit_count.set(count + 1);

        String::from("ACCEPTED")
    }

    pub fn get_total_deposits(&self) -> u64 {
        self.total_deposits.get_or_default()
    }

    pub fn get_deposit_count(&self) -> u32 {
        self.deposit_count.get_or_default()
    }
}
