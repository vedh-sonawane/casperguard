from fastapi import FastAPI, Request
from fastapi.responses import JSONResponse
import random

app = FastAPI()

JURISDICTION_DATA = {
    "ASSET-GOOD": {"jurisdiction": "US", "eligible": True},
    "ASSET-MID": {"jurisdiction": "EU", "eligible": True},
    "ASSET-BAD": {"jurisdiction": "DPRK", "eligible": False},
    "ASSET-INVOICE-001": {"jurisdiction": "UK", "eligible": True},
    "ASSET-BOND-001": {"jurisdiction": "SG", "eligible": True},
    "ASSET-PROPERTY-001": {"jurisdiction": "UAE", "eligible": True},
}

@app.get("/jurisdiction/{asset_id}")
async def get_jurisdiction(asset_id: str, request: Request):
    payment = request.headers.get("X-402-Payment")
    if not payment:
        return JSONResponse(status_code=402, content={"error": "payment required"}, headers={
            "X-402-Price": "0.03",
            "X-402-Asset": "CSPR",
            "X-402-Description": "Jurisdiction eligibility check",
        })
    data = JURISDICTION_DATA.get(asset_id, {"jurisdiction": "UNKNOWN", "eligible": False})
    return {"asset_id": asset_id, **data}

@app.get("/market-volatility/{asset_id}")
async def get_volatility(asset_id: str, request: Request):
    payment = request.headers.get("X-402-Payment")
    if not payment:
        return JSONResponse(status_code=402, content={"error": "payment required"}, headers={
            "X-402-Price": "0.08",
            "X-402-Asset": "CSPR",
            "X-402-Description": "Market volatility index",
        })
    return {
        "asset_id": asset_id,
        "volatility_index": round(random.uniform(0.05, 0.85), 2),
        "30d_trend": random.choice(["stable", "rising", "falling"]),
    }