#!/bin/bash
cd Backend
python3.11 -m gunicorn wsgi:application --bind 0.0.0.0:$PORT --worker-class eventlet --workers 1 --timeout 120
