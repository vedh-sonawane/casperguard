"""Serve the CasperGuard dashboard and expose live compliance data."""

import json
import os
import socket
import subprocess
import sys
from pathlib import Path

import uvicorn
from fastapi import FastAPI, BackgroundTasks
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import FileResponse, JSONResponse
from fastapi.staticfiles import StaticFiles

DASHBOARD_DIR = Path(__file__).resolve().parent
PROJECT_ROOT = DASHBOARD_DIR.parent
RESULTS_PATH = DASHBOARD_DIR / "results.json"

app = FastAPI(title="CasperGuard Dashboard API")
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
)

_agent_running = False


def _read_results() -> dict:
    if RESULTS_PATH.exists():
        return json.loads(RESULTS_PATH.read_text(encoding="utf-8"))
    return {
        "updated_at": None,
        "agent_status": "idle",
        "x402_calls": 0,
        "contracts": {},
        "assets": [],
        "feed": [],
    }


@app.get("/api/status")
def get_status():
    data = _read_results()
    data["server_ok"] = True
    data["agent_running"] = _agent_running
    return data


@app.post("/api/run")
def run_compliance_cycle(background_tasks: BackgroundTasks):
    global _agent_running
    if _agent_running:
        return JSONResponse(
            status_code=409,
            content={"error": "Compliance cycle already running"},
        )

    def _run_agent():
        global _agent_running
        _agent_running = True
        try:
            subprocess.run(
                [sys.executable, "-m", "agent.main"],
                cwd=PROJECT_ROOT,
                check=False,
            )
        finally:
            _agent_running = False

    background_tasks.add_task(_run_agent)
    return {"status": "started", "message": "Compliance cycle started"}


@app.get("/")
def serve_index():
    return FileResponse(DASHBOARD_DIR / "index.html")


app.mount("/static", StaticFiles(directory=DASHBOARD_DIR), name="static")


def _port_in_use(host: str, port: int) -> bool:
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as sock:
        sock.settimeout(0.5)
        return sock.connect_ex((host, port)) == 0


if __name__ == "__main__":
    host = os.environ.get("DASHBOARD_HOST", "127.0.0.1")
    port = int(os.environ.get("DASHBOARD_PORT", "8080"))

    if _port_in_use(host, port):
        print(f"Port {port} is already in use on {host}.")
        print(f"Dashboard is probably already running: http://{host}:{port}")
        print("Open that URL in your browser — you do not need to start the server again.")
        print()
        print("To restart on a different port:")
        print("  $env:DASHBOARD_PORT=8081; python dashboard/server.py")
        sys.exit(0)

    print(f"CasperGuard Dashboard at http://{host}:{port}")
    uvicorn.run(app, host=host, port=port, log_level="info")
