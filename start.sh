#!/bin/bash
cd Backend
.venv/bin/gunicorn wsgi:application \
  --worker-class eventlet \
  --workers 1 \
  --bind 0.0.0.0:$PORT \
  --timeout 120
