#!/bin/bash
# Project Setup Script - Federated Learning Image Classification

set -e  # Exit on error

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VENV_DIR="${PROJECT_ROOT}/venv"
PYTHON_VERSION="3.9"

echo "========================================="
echo "Federated Learning Project Setup"
echo "========================================="
echo ""

# Check Python version
echo "[1/5] Checking Python version..."
python_version=$(python3 --version 2>&1 | awk '{print $2}')
echo "Found Python: $python_version"

# Create virtual environment
echo "[2/5] Creating virtual environment..."
if [ ! -d "$VENV_DIR" ]; then
    python3 -m venv "$VENV_DIR"
    echo "Virtual environment created at: $VENV_DIR"
else
    echo "Virtual environment already exists"
fi

# Activate virtual environment
echo "[3/5] Activating virtual environment..."
source "$VENV_DIR/bin/activate"

# Install dependencies
echo "[4/5] Installing dependencies..."
pip install --upgrade pip setuptools wheel
if [ -f "${PROJECT_ROOT}/requirements.txt" ]; then
    pip install -r "${PROJECT_ROOT}/requirements.txt"
    echo "Dependencies installed successfully"
else
    echo "WARNING: requirements.txt not found"
fi

# Create project directories
echo "[5/5] Creating project directories..."
mkdir -p "${PROJECT_ROOT}/backend_fl"
mkdir -p "${PROJECT_ROOT}/frontend_web/routes"
mkdir -p "${PROJECT_ROOT}/frontend_web/templates"
mkdir -p "${PROJECT_ROOT}/frontend_web/static/css"
mkdir -p "${PROJECT_ROOT}/frontend_web/static/js"
mkdir -p "${PROJECT_ROOT}/frontend_web/uploads"
mkdir -p "${PROJECT_ROOT}/tests"
mkdir -p "${PROJECT_ROOT}/models"
mkdir -p "${PROJECT_ROOT}/logs"
mkdir -p "${PROJECT_ROOT}/docs"

echo ""
echo "========================================="
echo "Setup Complete!"
echo "========================================="
echo ""
echo "Next steps:"
echo "1. Activate virtual environment:"
echo "   source venv/bin/activate"
echo ""
echo "2. Start reading PRD.md for implementation tasks:"
echo "   cat PRD.md | head -100"
echo ""
echo "3. Begin Phase 1 from PRD.md"
echo ""
