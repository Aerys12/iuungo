#!/bin/bash
set -e

curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env

cd /home/site/wwwroot
uv sync --frozen

source /home/site/wwwroot/.venv/bin/activate
python manage.py migrate --noinput
gunicorn config.wsgi:application --bind 0.0.0.0:8000 --workers 2
