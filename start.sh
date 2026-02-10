#!/usr/bin/env bash
# Exit on error
set -o errexit

# Run migrations
poetry run python manage.py migrate

# Start Gunicorn
poetry run gunicorn django_finance.config.wsgi:application
