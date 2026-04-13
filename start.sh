#!/bin/bash

cd Backend
. .venv/bin/activate

gunicorn -k gevent -w 1 app:app --bind 0.0.0.0:$PORT
