#!/usr/bin/env python3
"""
Build CV PDF from Markdown.

Usage:
    python3 build_cv.py

Reads:  assets/cv.md
Writes: assets/cv.pdf

Requires:
    pip3 install markdown
    Google Chrome installed at /Applications/Google Chrome.app
"""

import markdown
import subprocess
import sys
from pathlib import Path

# --- Paths ---
SCRIPT_DIR = Path(__file__).parent
MD_PATH = SCRIPT_DIR / "assets" / "cv.md"
HTML_PATH = SCRIPT_DIR / "assets" / "cv.html"
PDF_PATH = SCRIPT_DIR / "assets" / "cv.pdf"

CHROME = "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

# --- CSS for the PDF (matches website aesthetic) ---
CSS = """
@page {
    size: letter;
    margin: 0.85in;
}

body {
    font-family: 'Georgia', 'Times New Roman', serif;
    font-size: 10.5pt;
    line-height: 1.5;
    color: #2c2c2c;
}

h1 {
    font-family: -apple-system, 'Segoe UI', 'Helvetica Neue', Arial, sans-serif;
    font-size: 18pt;
    text-align: center;
    margin-bottom: 0.2em;
    color: #1a1a1a;
}

/* Style the header lines (dept, email) that come right after h1 */
h1 + p, h1 + p + p {
    text-align: center;
    color: #666666;
    font-size: 10pt;
    margin-bottom: 0.2em;
}

h2 {
    font-family: -apple-system, 'Segoe UI', 'Helvetica Neue', Arial, sans-serif;
    font-size: 12pt;
    font-variant: small-caps;
    letter-spacing: 0.03em;
    border-bottom: 1px solid #2c2c2c;
    padding-bottom: 0.15em;
    margin-top: 1em;
    margin-bottom: 0.5em;
    color: #1a1a1a;
}

h3 {
    font-family: -apple-system, 'Segoe UI', 'Helvetica Neue', Arial, sans-serif;
    font-size: 10.5pt;
    margin-top: 0.8em;
    margin-bottom: 0.3em;
    color: #1a1a1a;
}

p {
    margin-bottom: 0.4em;
}

strong {
    font-weight: bold;
}

em {
    font-style: italic;
}

a {
    color: #2a5db0;
    text-decoration: none;
}

hr {
    border: none;
    border-top: 1px solid #e0e0e0;
    margin: 1em 0;
}

ul {
    margin-left: 0;
    padding-left: 1.2em;
    margin-bottom: 0.5em;
}

li {
    margin-bottom: 0.25em;
}
"""


def build():
    # Read markdown, stripping any YAML front matter
    md_text = MD_PATH.read_text(encoding="utf-8")
    if md_text.startswith("---"):
        _, _, md_text = md_text.split("---", 2)

    # Convert markdown to HTML
    html_body = markdown.markdown(md_text, extensions=["extra"])

    # Wrap in full HTML document with CSS
    html_doc = f"""<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <style>{CSS}</style>
</head>
<body>
{html_body}
</body>
</html>"""

    # Write intermediate HTML
    HTML_PATH.write_text(html_doc, encoding="utf-8")

    # Use Chrome headless to convert HTML → PDF
    result = subprocess.run(
        [
            CHROME,
            "--headless",
            "--disable-gpu",
            "--no-pdf-header-footer",
            f"--print-to-pdf={PDF_PATH}",
            str(HTML_PATH),
        ],
        capture_output=True,
        text=True,
    )

    if PDF_PATH.exists() and PDF_PATH.stat().st_size > 0:
        print(f"✓ Built {PDF_PATH} ({PDF_PATH.stat().st_size:,} bytes)")
    else:
        print("✗ PDF generation failed.", file=sys.stderr)
        if result.stderr:
            print(result.stderr, file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    build()
