FROM python:3.9-slim-bookworm AS base

# uv: pinned binary copied from the official image
COPY --from=ghcr.io/astral-sh/uv:0.13.1 /uv /uvx /bin/

# The venv lives outside $APP_HOME so docker-compose's bind mount of training/
# can't hide it (or shadow it with a host .venv). Its bin/ is on PATH, so
# python/celery run directly without `uv run`.
ENV UV_PROJECT_ENVIRONMENT=/opt/venv \
    UV_PYTHON_DOWNLOADS=never \
    UV_COMPILE_BYTECODE=1 \
    UV_LINK_MODE=copy \
    PATH="/opt/venv/bin:$PATH" \
    APP_HOME=/home/app/training

WORKDIR /usr/src/build
COPY pyproject.toml uv.lock ./

# create directory for the app user
RUN mkdir -p /home/app

# create the app user (explicit --home: Debian's default for system users is
# /nonexistent, which would break the ~/.aws mount at /home/app/.aws)
RUN addgroup --system app && adduser --system --group --home /home/app app

# create the appropriate directories
RUN mkdir "$APP_HOME"


######################## development target ########################
FROM base AS development
ENV ENVIRONMENT=development

# all dependency groups (incl. dev: pytest-django, moto)
RUN --mount=type=cache,target=/root/.cache/uv \
    uv sync --frozen


# we previously mounted training/ to APP_HOME
WORKDIR $APP_HOME
RUN chown -R app:app "$APP_HOME"
USER app

CMD ["celery", "-A", "training.core.celery.worker", "worker", "--loglevel=INFO"]

######################## production target #########################
FROM base AS production
ENV ENVIRONMENT=production

RUN --mount=type=cache,target=/root/.cache/uv \
    uv sync --frozen --no-dev

# copy project
WORKDIR $APP_HOME
COPY . $APP_HOME

RUN chown -R app:app "$APP_HOME"
USER app

CMD ["celery", "-A", "training.core.celery.worker", "worker", "--loglevel=INFO"]
