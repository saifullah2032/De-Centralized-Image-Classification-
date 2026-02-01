.PHONY: help setup venv install clean test lint format run-server run-client run-web docker-build docker-up docker-down

help:
	@echo "Federated Learning Project - Available Commands"
	@echo ""
	@echo "Setup Commands:"
	@echo "  make setup         Create virtual environment and install dependencies"
	@echo "  make venv          Create Python virtual environment"
	@echo "  make install       Install Python dependencies"
	@echo ""
	@echo "Development Commands:"
	@echo "  make lint          Run code linting (flake8, pylint)"
	@echo "  make format        Format code (black, isort)"
	@echo "  make test          Run test suite with coverage"
	@echo "  make clean         Remove build artifacts and cache files"
	@echo ""
	@echo "Runtime Commands:"
	@echo "  make run-server    Start Flower server (port 8080)"
	@echo "  make run-client    Start Flower client (client-id=0)"
	@echo "  make run-web       Start Flask web UI (port 5000)"
	@echo ""
	@echo "Docker Commands:"
	@echo "  make docker-build  Build Docker images"
	@echo "  make docker-up     Start containers with docker-compose"
	@echo "  make docker-down   Stop and remove containers"
	@echo ""

setup: venv install
	@echo "Project setup complete!"
	@echo "Activate venv with: source venv/bin/activate (Linux/Mac) or venv\\Scripts\\activate (Windows)"

venv:
	python3 -m venv venv
	@echo "Virtual environment created"

install:
	. venv/bin/activate && pip install --upgrade pip setuptools wheel
	. venv/bin/activate && pip install -r requirements.txt
	@echo "Dependencies installed"

clean:
	find . -type d -name __pycache__ -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete
	find . -type d -name ".pytest_cache" -exec rm -rf {} +
	find . -type d -name ".coverage" -exec rm -rf {} +
	find . -type d -name "htmlcov" -exec rm -rf {} +
	find . -type d -name "*.egg-info" -exec rm -rf {} +
	find . -type d -name "build" -exec rm -rf {} +
	find . -type d -name "dist" -exec rm -rf {} +
	@echo "Cleaned up build artifacts"

lint:
	. venv/bin/activate && flake8 backend_fl frontend_web tests --max-line-length=100 --ignore=E501,W503
	@echo "Linting complete"

format:
	. venv/bin/activate && black backend_fl frontend_web tests --line-length=100
	. venv/bin/activate && isort backend_fl frontend_web tests
	@echo "Code formatted"

test:
	. venv/bin/activate && pytest tests/ -v --cov=backend_fl --cov=frontend_web --cov-report=html
	@echo "Tests complete - coverage report in htmlcov/index.html"

run-server:
	. venv/bin/activate && python backend_fl/fl_server.py

run-client:
	. venv/bin/activate && python backend_fl/fl_client.py --client-id 0

run-web:
	. venv/bin/activate && python frontend_web/app.py

docker-build:
	docker-compose build

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down

.PHONY: docs
docs:
	. venv/bin/activate && sphinx-build -b html docs docs/_build
	@echo "Documentation built in docs/_build/index.html"
