import argparse
from pathlib import Path

DEFAULT_WASM_FILES = [
    Path("contracts/wasm/casperguard_final.wasm"),
    Path("casperguard_final.wasm"),
    Path("contracts/wasm/casperguard_build_contract.wasm"),
    Path("casperguard_build_contract.wasm"),
]


def strip_bulk_memory_instructions(wasm_path: Path) -> bool:
    if not wasm_path.exists():
        raise FileNotFoundError(f"WASM file not found: {wasm_path}")

    data = wasm_path.read_bytes()
    fixed = bytearray(data)
    replacements = 0
    i = 0

    while i < len(fixed) - 1:
        if fixed[i] == 0xFC and fixed[i + 1] in (0x0A, 0x0B):
            fixed[i] = 0x01
            fixed[i + 1] = 0x01
            replacements += 1
            i += 2
        else:
            i += 1

    if replacements > 0:
        print(f"SUCCESS: Stripped out {replacements} illegal bulk-memory opcodes from {wasm_path}.")
        wasm_path.write_bytes(fixed)
        print(f"Fixed WASM contract saved successfully: {wasm_path}")
        return True

    print(f"No illegal bulk-memory instructions found in {wasm_path}.")
    return False


def find_wasm_path(explicit_path: Path | None = None) -> Path:
    if explicit_path:
        return explicit_path

    for candidate in DEFAULT_WASM_FILES:
        if candidate.exists():
            return candidate

    raise FileNotFoundError(
        "Could not find a default WASM file. Try passing the path to casperguard_final.wasm or casperguard_build_contract.wasm."
    )


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Strip unsupported bulk-memory opcodes from a Casper WASM contract.")
    parser.add_argument(
        "wasm_path",
        nargs="?",
        type=Path,
        help="Path to the WASM file to repair. Defaults to casperguard_final.wasm or casperguard_build_contract.wasm.",
    )
    args = parser.parse_args()

    target_path = find_wasm_path(args.wasm_path)
    strip_bulk_memory_instructions(target_path)