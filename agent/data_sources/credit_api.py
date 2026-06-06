from fastapi import FastAPI, Request
from fastapi.responses import JSONResponse

app = FastAPI()

CREDIT_SCORES = {
    "ASSET-GOOD": 88,
    "ASSET-MID": 54,
    "ASSET-BAD": 18,
    "ASSET-INVOICE-001": 91,
    "ASSET-BOND-001": 72,
    "ASSET-PROPERTY-001": 65,
}

@app.get("/credit/{asset_id}")
async def get_credit_score(asset_id: str, request: Request):
    payment = request.headers.get("X-402-Payment")
    if not payment:
        return JSONResponse(status_code=402, content={"error": "payment required"}, headers={
            "X-402-Price": "0.05",
            "X-402-Asset": "CSPR",
            "X-402-Description": "Moody equivalent credit score lookup",
        })
    score = CREDIT_SCORES.get(asset_id, 50)
    return {
        "asset_id": asset_id,
        "credit_score": score,
        "rating": "AAA" if score > 85 else "BBB" if score > 60 else "CCC",
        "agency": "CasperRatings-mock",
    }