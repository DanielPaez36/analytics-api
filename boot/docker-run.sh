#!/bin/bash
source /opt/venv/bin/activate

cd /app
PORT=${PORT:-8000}
HOST=${HOST:-0.0.0.0}

gunicorn -k uvicorn.workers.UvicornWorker -b $HOST:$PORT main:app