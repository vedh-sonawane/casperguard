import httpx
import time
import hashlib

def generate_payment_proof(price: str, asset: str, agent_id: str) -> str:
    timestamp = str(int(time.time()))
    raw = f"{agent_id}:{price}:{asset}:{timestamp}"
    proof = hashlib.sha256(raw.encode()).hexdigest()
    return f"casper-x402:{proof}:{timestamp}"

async def fetch_with_x402(url: str, agent_id: str) -> dict:
    async with httpx.AsyncClient() as client:
        print(f"  [x402] Calling {url}")
        r = await client.get(url)

        if r.status_code == 402:
            price = r.headers.get("X-402-Price", "0.10")
            asset = r.headers.get("X-402-Asset", "CSPR")
            description = r.headers.get("X-402-Description", "data lookup")
            print(f"  [x402] Got 402 — Price: {price} {asset} for '{description}'")
            print(f"  [x402] Generating payment proof and retrying...")

            payment_proof = generate_payment_proof(price, asset, agent_id)
            r = await client.get(url, headers={
                "X-402-Payment": payment_proof,
                "X-402-Agent-ID": agent_id,
            })
            print(f"  [x402] Payment accepted. Status: {r.status_code}")

        r.raise_for_status()
        return r.json()