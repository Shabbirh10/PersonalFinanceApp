#!/usr/bin/env bash
# Exit on error
set -o errexit

# Install dependencies
poetry install --no-root

# Check for Node.js
echo "Checking Node.js version..."
node --version
npm --version

# Convert static asset files
# poetry run python manage.py tailwind install
# poetry run python manage.py tailwind build
ls -lh theme/static/css/dist/styles.css
poetry run python manage.py collectstatic --no-input
ls -lh staticfiles/css/dist/styles.css

# Apply any outstanding database migrations
# Apply any outstanding database migrations
# poetry run python manage.py migrate
