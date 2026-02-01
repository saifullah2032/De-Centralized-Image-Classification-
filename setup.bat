@echo off
REM Project Setup Script for Windows - Federated Learning Image Classification

setlocal enabledelayedexpansion

echo =========================================
echo Federated Learning Project Setup (Windows)
echo =========================================
echo.

REM Check Python version
echo [1/5] Checking Python version...
python --version
if errorlevel 1 (
    echo ERROR: Python not found. Please install Python 3.9+
    exit /b 1
)

REM Create virtual environment
echo [2/5] Creating virtual environment...
if not exist "venv" (
    python -m venv venv
    echo Virtual environment created at: venv
) else (
    echo Virtual environment already exists
)

REM Activate virtual environment
echo [3/5] Activating virtual environment...
call venv\Scripts\activate.bat

REM Install dependencies
echo [4/5] Installing dependencies...
python -m pip install --upgrade pip setuptools wheel
if exist "requirements.txt" (
    pip install -r requirements.txt
    echo Dependencies installed successfully
) else (
    echo WARNING: requirements.txt not found
)

REM Create project directories
echo [5/5] Creating project directories...
if not exist "backend_fl" mkdir backend_fl
if not exist "frontend_web\routes" mkdir frontend_web\routes
if not exist "frontend_web\templates" mkdir frontend_web\templates
if not exist "frontend_web\static\css" mkdir frontend_web\static\css
if not exist "frontend_web\static\js" mkdir frontend_web\static\js
if not exist "frontend_web\uploads" mkdir frontend_web\uploads
if not exist "tests" mkdir tests
if not exist "models" mkdir models
if not exist "logs" mkdir logs
if not exist "docs" mkdir docs

echo.
echo =========================================
echo Setup Complete!
echo =========================================
echo.
echo Next steps:
echo 1. Activate virtual environment:
echo    venv\Scripts\activate.bat
echo.
echo 2. Start reading PRD.md for implementation tasks:
echo    type PRD.md | more
echo.
echo 3. Begin Phase 1 from PRD.md
echo.
pause
