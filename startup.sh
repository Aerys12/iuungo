#!/bin/bash
set -e

source /home/site/wwwroot/.venv/bin/activate
python manage.py migrate --noinput
gunicorn config.wsgi:application --bind 0.0.0.0:8000 --workers 2
