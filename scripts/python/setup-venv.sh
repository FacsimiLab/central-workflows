#!/bin/bash

cd $(git rev-parse --show-toplevel)
echo "Current directory: $(pwd)"

echo "Setting up Python virtual environment..."
uv sync --frozen $1

echo "Activating virtual environment..."
source .venv/bin/activate
echo "Python version: $(python --version)"