use odra::prelude::*;

#[odra::odra_type]
pub struct AssetRecord {
    pub name: String,
    pub asset_type: String,
    pub issuer: String,
    pub value_usd: u64,
    pub registered_at: u64,
    pub active: bool,
}

#[odra::odra_error]
pub enum AssetRegistryError {
    NotOwner = 1,
}

#[odra::module]
pub struct AssetRegistry {
    assets: Mapping<String, AssetRecord>,
    asset_count: Var<u32>,
    owner: Var<Address>,
}

#[odra::module]
impl AssetRegistry {
    #[odra(init)]
    pub fn init(&mut self) {
        self.owner.set(self.env().caller());
        self.asset_count.set(0);
    }

    pub fn register_asset(
        &mut self,
        id: String,
        name: String,
        asset_type: String,
        issuer: String,
        value_usd: u64,
    ) {
        let record = AssetRecord {
            name,
            asset_type,
            issuer,
            value_usd,
            registered_at: self.env().get_block_time(),
            active: true,
        };
        self.assets.set(&id, record);

        let count = self.asset_count.get_or_default();
        self.asset_count.set(count + 1);
    }

    pub fn get_asset(&self, id: String) -> Option<AssetRecord> {
        self.assets.get(&id)
    }

    pub fn deactivate_asset(&mut self, id: String) {
        let caller = self.env().caller();
        let owner = self.owner.get().expect("Owner not initialized");
        
        if caller != owner {
            self.env().revert(AssetRegistryError::NotOwner);
        }

        if let Some(mut record) = self.assets.get(&id) {
            record.active = false;
            self.assets.set(&id, record);
        }
    }

    pub fn get_asset_count(&self) -> u32 {
        self.asset_count.get_or_default()
    }
}
