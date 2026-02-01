# Contributing to Federated Learning Image Classification

Thank you for your interest in contributing! This document provides guidelines for participating in this project.

## Code of Conduct

### Our Pledge
We are committed to providing a welcoming and inclusive environment for all contributors regardless of age, body size, disability, ethnicity, gender identity, experience level, nationality, personal appearance, political belief, profession, race, religion, sexual identity, or sexual orientation.

### Expected Behavior
- Use welcoming and inclusive language
- Be respectful of differing viewpoints and experiences
- Accept constructive criticism gracefully
- Focus on what is best for the community
- Show empathy towards other community members

### Unacceptable Behavior
- Use of sexualized language or imagery
- Trolling, insulting/derogatory comments, and personal attacks
- Public or private harassment
- Publishing others' private information
- Other conduct which could reasonably be considered inappropriate

## Development Workflow

### Getting Started
1. Fork the repository
2. Clone your fork: `git clone https://github.com/your-username/federated-learning-project.git`
3. Add upstream: `git remote add upstream https://github.com/original-repo.git`
4. Create a branch: `git checkout -b feature/your-feature-name`

### Setting Up Development Environment
```bash
# Create virtual environment
python -m venv venv

# Activate it
source venv/bin/activate  # Linux/macOS
venv\Scripts\activate     # Windows

# Install dependencies
pip install -r requirements.txt
```

### Making Changes

#### Before You Start
- Check existing issues and PRs to avoid duplicate work
- Open an issue to discuss significant changes
- Reference issues in your commits

#### While Working
1. Keep commits atomic and focused
2. Write descriptive commit messages
3. Follow code style (see below)
4. Write tests for new features
5. Update documentation as needed

#### Code Style

**Python**
- Follow PEP 8 style guide
- Use 4-space indentation
- Max line length: 100 characters
- Use type hints where possible

**Formatting & Linting**
```bash
# Format code
black backend_fl frontend_web tests --line-length=100

# Sort imports
isort backend_fl frontend_web tests

# Check code quality
flake8 backend_fl frontend_web tests
pylint backend_fl frontend_web tests
```

#### Testing
- Write tests for all new features
- Ensure existing tests pass
- Target >80% code coverage

```bash
# Run tests
pytest tests/ -v --cov

# Run specific test
pytest tests/test_model.py -v
```

#### Documentation
- Update README.md if adding user-facing features
- Add docstrings to functions and classes
- Update API.md for API changes
- Update ARCHITECTURE.md for architectural changes

### Submitting Changes

#### Commit Messages
Use descriptive commit messages following this format:
```
Type: Brief description (50 chars max)

Detailed explanation if needed (wrap at 72 chars).
Mention related issues: Fixes #123, Related to #456
```

Types:
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation
- `style`: Code style changes
- `refactor`: Code refactoring
- `test`: Test additions or changes
- `chore`: Build or dependency changes

Example:
```
feat: Implement FedAvg aggregation strategy

Add SaveModelStrategy class that implements FedAvg algorithm
for aggregating client model updates. Includes support for 
model checkpointing and history tracking.

Fixes #42
```

#### Pull Request Process
1. Ensure your branch is up to date: `git rebase upstream/master`
2. Push to your fork: `git push origin feature/your-feature-name`
3. Open a PR with descriptive title and description
4. Link related issues in the PR description
5. Wait for CI checks to pass
6. Respond to review comments
7. Request re-review after making changes

### Pull Request Requirements
- [ ] Descriptive title and description
- [ ] Tests added/updated and passing
- [ ] Code follows project style
- [ ] Documentation updated
- [ ] No breaking changes (or documented)
- [ ] CI/CD checks passing

## Reporting Issues

### Security Issues
**Do not create a public issue.** Email security concerns privately.

### Bug Reports
Include:
- Python version and OS
- TensorFlow and Flower versions
- Minimal reproducible example
- Expected vs actual behavior
- Error messages and traceback

### Feature Requests
Include:
- Use case and motivation
- Proposed solution or API
- Alternatives considered
- Related issues

## Project Structure

```
federated-learning-project/
├── backend_fl/              # FL core implementation
├── frontend_web/            # Flask web interface
├── tests/                   # Test suite
├── docs/                    # Documentation
├── PRD.md                   # Implementation guide
└── plan.md                  # Technical specifications
```

## Development Standards

### Backend (backend_fl/)
- Model training and aggregation
- Federated learning algorithms
- Privacy mechanisms
- Data preprocessing

### Frontend (frontend_web/)
- Flask web application
- User interface and templates
- API endpoints
- Authentication and RBAC

### Tests (tests/)
- Unit tests for each module
- Integration tests
- End-to-end tests
- Privacy verification tests

## Git Workflow

```
master (stable, production-ready)
  ↑
develop (integration branch)
  ↑
feature/xxx (your changes)
```

### Branch Naming
- `feature/description` - New features
- `fix/issue-number` - Bug fixes
- `docs/description` - Documentation
- `refactor/description` - Code refactoring

## Review Process

### What Reviewers Look For
- Code quality and style
- Test coverage
- Documentation
- Performance implications
- Security considerations
- API backwards compatibility

### How to Request Review
1. Make sure CI checks pass
2. Request review from maintainers
3. Be responsive to feedback
4. Thank reviewers for their time

## Resources

- **Getting Started**: See RALPHY_START_HERE.md
- **Quick Reference**: See DEVELOPMENT.md
- **Implementation Guide**: See PRD.md
- **Technical Specs**: See plan.md
- **API Documentation**: See docs/API.md

## Questions?

- Check existing documentation
- Search closed issues and PRs
- Open an issue with question label

---

Thank you for contributing! Your efforts help make this project better for everyone.
