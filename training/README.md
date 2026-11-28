## Local setup (uv)
Dependencies are managed with [uv](https://docs.astral.sh/uv/) (`pyproject.toml` + `uv.lock`). Conda/Mamba and Poetry are no longer used.

One-time setup:
```sh
brew install uv            # or: curl -LsSf https://astral.sh/uv/install.sh | sh
uv python install 3.9      # uv-managed Python 3.9, same as Docker/CI
```

From the training/ directory
```sh
uv sync                                          # create/update .venv (incl. dev deps)
uv run python manage.py runserver 0.0.0.0:8000   # Django API on :8000
AWS_ACCESS_KEY_ID=testing AWS_SECRET_ACCESS_KEY=testing AWS_DEFAULT_REGION=us-west-2 \
  uv run pytest tests                            # same as CI
```
This does not start Celery or Redis; use Docker (below) for the full stack.

If you had the old conda env, you can remove it: `conda env remove -n dlp`

## Managing dependencies
- Add: `uv add <package>` (dev-only: `uv add --dev <package>`); remove: `uv remove <package>`
- Upgrade one package: `uv lock --upgrade-package <package>`, then `uv sync`
- Always commit `pyproject.toml` and `uv.lock` together. Docker and CI install with `--frozen`, so an out-of-date lock fails the build.
- `torch`/`torchvision` come from the PyTorch CPU index on Linux and from PyPI on macOS (see `[tool.uv.sources]` in `pyproject.toml`). Keep those entries when changing their versions.

## Run docker
Ensure you have logged in to AWS, using (`aws configure sso`) then (`aws sso login --profile=dlp`)

From the training/ directory
Dev: `AWS_PROFILE=dlp docker-compose up`
Production: `AWS_PROFILE=dlp docker compose -f docker-compose.prod.yml up`

To rebuild, add a --build flag to the command. If running containers are not replaced after a rebuild, add `--force-recreate`.

Run the tests inside the dev container: `docker compose exec web pytest tests`

The images install dependencies into `/opt/venv` (already on `PATH`), so the `.venv` in your mounted training/ folder is not used inside the containers.
