import requests
from bs4 import BeautifulSoup

def decode_secret_message(doc_url: str) -> None:
    # 1. Fetch Google Doc HTML
    response = requests.get(doc_url)
    response.raise_for_status()

    soup = BeautifulSoup(response.text, "html.parser")
    rows = soup.find_all("tr")

    if not rows:
        print("No table rows found.")
        return

    # 2. Determine column indices dynamically from the header row
    header_cols = [col.get_text(strip=True).lower() for col in rows[0].find_all("td")]
    
    try:
        x_idx = next(i for i, h in enumerate(header_cols) if "x" in h)
        y_idx = next(i for i, h in enumerate(header_cols) if "y" in h)
        char_idx = next(i for i, h in enumerate(header_cols) if "char" in h)
    except StopIteration:
        # Fallback to defaults if headers aren't explicitly named as expected
        x_idx, char_idx, y_idx = 0, 1, 2

    points = []

    # 3. Parse table rows into (x, y, char), skipping the header
    for row in rows[1:]:
        cols = row.find_all("td")
        if len(cols) < 3:
            continue

        try:
            x = int(cols[x_idx].get_text(strip=True))
            y = int(cols[y_idx].get_text(strip=True))
            # Preserve spaces by not stripping the character column aggressively
            char = cols[char_idx].get_text()
            if len(char) > 1:
                char = char.strip()
            
            points.append((x, y, char))
        except ValueError:
            continue

    if not points:
        print("No valid data found.")
        return

    # 4. Determine grid size
    max_x = max(x for x, y, c in points)
    max_y = max(y for x, y, c in points)

    # 5. Build grid
    grid = [[" " for _ in range(max_x + 1)] for _ in range(max_y + 1)]

    # 6. Fill grid
    for x, y, char in points:
        grid[y][x] = char

    # 7. Print result UPSIDE DOWN (reversing y-axis) so it reads right-side up
    for row in reversed(grid):
        print("".join(row))

# Run the script with the provided URL
decode_secret_message(
    "https://docs.google.com/document/d/e/2PACX-1vSvM5gDlNvt7npYHhp_XfsJvuntUhq184By5xO_pA4b_gCWeXb6dM6ZxwN8rE6S4ghUsCj2VKR21oEP/pub"
)