from fastapi import FastAPI, Request
from fastapi.responses import JSONResponse

app = FastAPI()

SANCTIONED = ["ASSET-BAD", "ASSET-IRAN-001", "ASSET-DPRK-002"]

@app.get("/sanctions/{asset_id}")
async def check_sanctions(asset_id: str, request: Request):
    payment = request.headers.get("X-402-Payment")
    if not payment:
        return JSONResponse(status_code=402, content={"error": "payment required"}, headers={
            "X-402-Price": "0.10",
            "X-402-Asset": "CSPR",
            "X-402-Description": "OFAC sanctions database lookup",
        })
    return {
        "asset_id": asset_id,
        "sanctioned": asset_id in SANCTIONED,
        "database": "OFAC-mock-2026",
        "checked_at": "2026-06-03",
    }