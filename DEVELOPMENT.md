# Development Quick Reference

## 🚀 Quick Start

### First Time Setup
```bash
# Linux/macOS
bash setup.sh

# Windows
setup.bat

# Or manually:
python -m venv venv
source venv/bin/activate  # Linux/macOS
venv\Scripts\activate     # Windows
pip install -r requirements.txt
```

## 📋 Common Commands

### Using Make (Linux/macOS/WSL)
```bash
make help              # Show all available commands
make setup             # Full project setup
make test              # Run tests with coverage
make lint              # Check code quality
make format            # Auto-format code
make clean             # Remove build artifacts
make run-server        # Start Flower server
make run-client        # Start Flower client
make run-web           # Start Flask web UI
make docker-up         # Start Docker containers
```

### Manual Commands
```bash
# Activate virtual environment
source venv/bin/activate       # Linux/macOS
venv\Scripts\activate.bat      # Windows

# Install dependencies
pip install -r requirements.txt

# Run tests
pytest tests/ -v --cov

# Run linting
flake8 backend_fl frontend_web tests
pylint backend_fl frontend_web tests

# Format code
black backend_fl frontend_web tests
isort backend_fl frontend_web tests

# Run components
python backend_fl/fl_server.py                 # Flower server
python backend_fl/fl_client.py --client-id 0  # Flower client
python frontend_web/app.py                    # Flask web UI

# Docker
docker-compose build
docker-compose up -d
docker-compose down
```

## 📁 Project Structure
```
federated-learning-project/
├── backend_fl/              # Federated Learning core
├── frontend_web/            # Flask web interface
├── tests/                   # Test suite
├── models/                  # Model artifacts
├── logs/                    # Application logs
├── docs/                    # Documentation
├── requirements.txt         # Python dependencies
├── PRD.md                   # Implementation guide
└── plan.md                  # Technical specifications
```

## 🧪 Testing

### Run All Tests
```bash
pytest tests/ -v --cov
```

### Run Specific Test File
```bash
pytest tests/test_model.py -v
```

### Run with Coverage Report
```bash
pytest tests/ --cov=backend_fl --cov=frontend_web --cov-report=html
```

## 🔍 Code Quality

### Lint Code
```bash
flake8 backend_fl frontend_web tests --max-line-length=100
pylint backend_fl frontend_web tests
```

### Format Code
```bash
black backend_fl frontend_web tests --line-length=100
isort backend_fl frontend_web tests
```

## 🐳 Docker Deployment

### Build Images
```bash
docker-compose build
```

### Start Services
```bash
docker-compose up -d
```

### View Logs
```bash
docker-compose logs -f
```

### Stop Services
```bash
docker-compose down
```

### Access Services
- Flask Web UI: http://localhost:5000
- Flower Server: http://localhost:8080

## 📚 Documentation

### Read Implementation Guide
```bash
cat PRD.md         # 676 lines - detailed tasks
cat plan.md        # 2,237 lines - technical specs
cat QUICK_START.md # 348 lines - command reference
```

### Start Here
1. Read RALPHY_START_HERE.md (5 minutes)
2. Read first 100 lines of PRD.md (5 minutes)
3. Begin Phase 1, Task 1.1 from PRD.md

## 🔗 Git Workflow

### Check Status
```bash
git status
```

### View Recent Commits
```bash
git log --oneline -10
```

### Create New Branch
```bash
git checkout -b feature/your-feature-name
```

### Commit Changes
```bash
git add .
git commit -m "Descriptive message about changes"
```

### Push to Remote
```bash
git push origin branch-name
```

## 🐛 Troubleshooting

### Python not found
- Ensure Python 3.9+ is installed: `python --version`
- Add Python to PATH (Windows)

### Permission denied (setup.sh)
```bash
chmod +x setup.sh
bash setup.sh
```

### Virtual environment not activating
```bash
# Try explicit path
source ./venv/bin/activate  # Linux/macOS
./venv/Scripts/activate     # Windows PowerShell
```

### Dependencies won't install
```bash
pip install --upgrade pip
pip install -r requirements.txt --no-cache-dir
```

### Port already in use
- Flask (5000): `lsof -i :5000` (macOS/Linux)
- Flower (8080): `lsof -i :8080` (macOS/Linux)
- Windows: `netstat -ano | findstr :5000`

## 📖 Key Resources

- **PRD.md**: 100+ implementation tasks with verification steps
- **plan.md**: Complete technical specifications
- **QUICK_START.md**: Command reference table
- **README.md**: Documentation navigation guide

---

**Need Help?** Check RALPHY_START_HERE.md for guided orientation.
