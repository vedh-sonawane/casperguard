#![no_std] 

// Explicitly expose your inner modules
pub mod agent_registry;
pub mod asset_registry;
pub mod compliance_registry;
pub mod defi_gate;

// Re-export the contract modules so Odra's test and build tools 
// can cleanly discover and generate the required ContractRef files.
pub use agent_registry::AgentRegistry;
pub use asset_registry::AssetRegistry;
pub use compliance_registry::ComplianceRegistry;
pub use defi_gate::DefiGate;
