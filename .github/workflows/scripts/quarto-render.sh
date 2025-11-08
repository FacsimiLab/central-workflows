#!/bin/bash
set -euo pipefail

# go to repo root (fall back to CWD if not a git repo)
cd "$(git rev-parse --show-toplevel 2>/dev/null || echo "ERROR: not a git repo")"

# ensure quarto is present
if ! command -v quarto >/dev/null 2>&1; then
    echo "quarto is not installed or not on PATH" >&2
    exit 1
fi

# Setup the python virtual environment
bash .github/workflows/scripts/setup-venv.sh

# Activate the virtual environment
if [ -f ".venv/bin/activate" ]; then
    source .venv/bin/activate
fi
else
    echo "python venv could not be activated" >&2
    exit 1
fi




# Render Quarto
quarto render --no-cache

if [ -f "_quarto-manuscript.yml" ]; then
    quarto render --profile manuscript
fi

if [ -f "_quarto-production.yml" ]; then
    quarto render --profile production
fi