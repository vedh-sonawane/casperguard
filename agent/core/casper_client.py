import os
import httpx
from dotenv import load_dotenv

load_dotenv()

CSPR_CLOUD_API_KEY = os.getenv("CSPR_CLOUD_API_KEY")
TESTNET_NODE = os.getenv("TESTNET_NODE_URL", "http://rpc.testnet.casperlabs.io/rpc")
BASE_HEADERS = {"Authorization": f"Bearer {CSPR_CLOUD_API_KEY}"}
CSPR_CLOUD_BASE = "https://api.cspr.cloud"

async def get_contract_state(contract_hash: str, key: str) -> dict:
    url = f"{CSPR_CLOUD_BASE}/contracts/{contract_hash}/named-keys/{key}"
    async with httpx.AsyncClient() as client:
        r = await client.get(url, headers=BASE_HEADERS)
        r.raise_for_status()
        return r.json()

async def submit_deploy(deploy_json: dict) -> str:
    url = f"{CSPR_CLOUD_BASE}/deploys"
    async with httpx.AsyncClient() as client:
        r = await client.post(url, json=deploy_json, headers=BASE_HEADERS)
        r.raise_for_status()
        return r.json().get("deploy_hash", "")

async def get_deploy_status(deploy_hash: str) -> dict:
    url = f"{CSPR_CLOUD_BASE}/deploys/{deploy_hash}"
    async with httpx.AsyncClient() as client:
        r = await client.get(url, headers=BASE_HEADERS)
        r.raise_for_status()
        return r.json()