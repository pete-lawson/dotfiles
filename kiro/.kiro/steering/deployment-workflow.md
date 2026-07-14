# Deployment & Environment Workflow

## Core Principles

- **Never install packages to the base Python.** Always use project-level virtual environments.
- **Never install system-wide utilities.** All tooling must be scoped to the project or user level.
- Dependency management must be reproducible and locked.

## Python

Use [uv](https://docs.astral.sh/uv/) for all Python project and dependency management.

```bash
# Create a new project
uv init my-project

# Add dependencies
uv add pandas numpy

# Add dev dependencies
uv add --dev pytest ruff

# Run scripts within the managed environment
uv run python main.py

# Sync environment from lockfile
uv sync
```

- Every project must have a `pyproject.toml` and a `uv.lock` lockfile committed to version control.
- Pin the Python version in `pyproject.toml` under `requires-python` or via `.python-version`.
- Do not use `pip install` directly. Use `uv add` or `uv sync`.

## R

Use [renv](https://rstudio.github.io/renv/) for R dependency management.

```r
# Initialize renv in a project
renv::init()

# Install a package (recorded in lockfile)
renv::install("dplyr")

# Snapshot current state
renv::snapshot()

# Restore environment from lockfile
renv::restore()
```

- Every R project must have an `renv.lock` committed to version control.
- Do not install packages to user or system libraries for project work. Use the project-local `renv` library.
- Document the required R version in the project README or a `.Rversion` file.
