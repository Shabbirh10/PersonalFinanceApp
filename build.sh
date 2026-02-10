#!/usr/bin/env bash
# Exit on error
set -o errexit

# Install dependencies
poetry install --no-root

# Convert static asset files
poetry run python manage.py tailwind install
poetry run python manage.py tailwind build
poetry run python manage.py collectstatic --no-input

# Apply any outstanding database migrations
poetry run python manage.py migrate
