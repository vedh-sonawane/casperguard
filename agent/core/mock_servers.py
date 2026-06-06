"""Start local mock x402 data-source APIs required by the compliance agents."""

import socket
import threading
import time

import httpx
import uvicorn

from agent.data_sources.credit_api import app as credit_app
from agent.data_sources.market_api import app as market_app
from agent.data_sources.sanctions_api import app as sanctions_app

MOCK_APIS = [
    (sanctions_app, 8001),
    (credit_app, 8002),
    (market_app, 8003),
]


def _port_open(host: str, port: int) -> bool:
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as sock:
        sock.settimeout(0.5)
        return sock.connect_ex((host, port)) == 0


def _run_server(app, port: int) -> None:
    uvicorn.run(app, host="127.0.0.1", port=port, log_level="error")


def start_mock_servers() -> list[threading.Thread]:
    """Launch mock APIs on localhost unless they are already running."""
    threads: list[threading.Thread] = []

    for app, port in MOCK_APIS:
        if _port_open("127.0.0.1", port):
            print(f"  Mock API already running on http://localhost:{port}")
            continue

        thread = threading.Thread(
            target=_run_server,
            args=(app, port),
            daemon=True,
            name=f"mock-api-{port}",
        )
        thread.start()
        threads.append(thread)
        print(f"  Started mock API on http://localhost:{port}")

    return threads


def wait_for_mock_servers(timeout_seconds: float = 15.0) -> None:
    """Block until all mock API ports respond."""
    deadline = time.time() + timeout_seconds
    while time.time() < deadline:
        if all(_port_open("127.0.0.1", port) for _, port in MOCK_APIS):
            return
        time.sleep(0.25)
    raise RuntimeError(
        "Mock data APIs did not start in time. "
        "Expected services on ports 8001, 8002, and 8003."
    )


async def verify_mock_servers() -> None:
    """Confirm each mock API returns a 402 payment-required response."""
    async with httpx.AsyncClient() as client:
        checks = [
            ("http://127.0.0.1:8001/sanctions/ASSET-GOOD", 8001),
            ("http://127.0.0.1:8002/credit/ASSET-GOOD", 8002),
            ("http://127.0.0.1:8003/market-volatility/ASSET-GOOD", 8003),
        ]
        for url, port in checks:
            response = await client.get(url, timeout=5.0)
            if response.status_code != 402:
                raise RuntimeError(
                    f"Mock API on port {port} returned {response.status_code}, expected 402."
                )
