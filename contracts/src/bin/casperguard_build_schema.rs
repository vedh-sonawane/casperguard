#![doc = "Binary for building schema definitions from odra contracts."]
#[allow(unused_imports)]
use casperguard;

#[cfg(not(test))]
#[cfg(all(not(target_arch = "wasm32"), not(odra_module = "")))]
extern "Rust" {
    fn module_schema() -> odra::contract_def::ContractBlueprint;
    fn casper_contract_schema() -> odra::schema::casper_contract_schema::ContractSchema;
}

#[cfg(not(test))]
#[cfg(all(not(target_arch = "wasm32"), odra_module = ""))]
fn main() {}

#[cfg(not(test))]
#[cfg(all(not(target_arch = "wasm32"), not(odra_module = "")))]
fn main() {
    odra_build::schema(
        unsafe { crate::module_schema() },
        unsafe { crate::casper_contract_schema() },
    );
}
