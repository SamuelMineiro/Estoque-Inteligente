PYTHON ?= python
VENV := .venv

FIRST_TARGET := $(firstword $(MAKECMDGOALS))
ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))

.PHONY: lint format help %
.DEFAULT_GOAL := help

lint:
	npx prettier --check "**/*.{html,css,js,md}"
	ruff check

format:
	npx prettier --write "**/*.{html,css,js,md}"
	ruff format

migrate:
	$(PYTHON) manage.py migrate

start:
	gunicorn project.wsgi:application --bind 0.0.0.0:8000

debug:
	gunicorn project.wsgi:application --bind 0.0.0.0:8000 --reload

help:
	@echo "Available commands:"
	@echo "  lint       - Check code with prettier and ruff"
	@echo "  format     - Format code with prettier and ruff"
	@echo "  migrate    - Apply all database migrations"
	@echo "  start      - Start production server"
	@echo "  debug      - Start development server"
	@echo "  help       - Show this help message"

%:
	@if [ "$(FIRST_TARGET)" = "install" ]; then \
		:; \
	else \
		@echo "make: *** Unknown target '$@'. Use 'make help' for available targets." >&2; \
		exit 1; \
	fi
