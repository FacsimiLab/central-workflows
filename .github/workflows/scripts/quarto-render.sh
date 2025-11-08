#!/bin/bash
set -euo pipefail

# Inputs
INPUT_PROFILE="${1:-}"

#--------------------------------------------------------------------------------------
# Initialize
#--------------------------------------------------------------------------------------

# go to repo root (fall back to CWD if not a git repo)
REPO_ROOT=$(git rev-parse --show-toplevel 2>/dev/null || true)

if [ -n "$REPO_ROOT" ]; then
  cd "$REPO_ROOT" || { echo "Failed to cd to repo root: $REPO_ROOT" >&2; exit 1; }
else
  # not a git repo; remain in current working directory
  echo "Not a git repo; current working directory: $PWD"
  exit 1
fi

# ensure quarto is present
if ! command -v quarto >/dev/null 2>&1; then
  echo "quarto is not installed or not on PATH" >&2
  exit 1
fi

# Setup the python virtual environment (if the helper exists)
SETUP_SCRIPT=".central-workflows/.github/workflows/scripts/setup-venv.sh"
if [ -f "$SETUP_SCRIPT" ]; then
  bash "$SETUP_SCRIPT"
else
  echo "Warning: venv setup script not found at $SETUP_SCRIPT. Skipping venv setup." >&2
fi

# Activate the virtual environment
if [ -f ".venv/bin/activate" ]; then
  source ".venv/bin/activate" || { echo "python venv could not be activated" >&2; exit 1; }
else
  echo "python venv could not be activated: .venv/bin/activate missing" >&2
  exit 1
fi

#--------------------------------------------------------------------------------------
# Render Quarto
#--------------------------------------------------------------------------------------

echo "Rendering Quarto project..."
quarto render --no-cache

if [ -f "_quarto-$INPUT_PROFILE.yml" ]; then
    echo "Rendering Quarto profile: $INPUT_PROFILE"
    quarto render --profile $INPUT_PROFILE

else
    echo "Quarto profile file _quarto-$INPUT_PROFILE.yml not found; skipping profile
fi

echo "Quarto rendering completed successfully."
#--------------------------------------------------------------------------------------
