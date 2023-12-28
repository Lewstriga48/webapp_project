#!/bin/bash

echo "Waiting for MySQL..."

while ! nc -z db 3306; do
  sleep 1
done

echo "MySQL started"
if [ ! -d "/app/migrations" ]; then
  flask db init
fi

flask db upgrade
python app.py
