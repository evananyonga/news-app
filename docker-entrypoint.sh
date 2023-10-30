#!/bin/bash

# Collect staticfiles files
echo "Collect static files"
python mockingtests/manage.py collectstatic --noinput

# Apply database migrations
echo "Apply database migrations"
python mockingtests/manage.py migrate

# Start server
echo "Starting server"
python mockingtests/manage.py runserver 0.0.0.0:8000