#!/bin/bash

python manage.py collectstatic --no-input
python manage.py migrate --noinput

waitress-serve --port=$PORT resolve_aqui_brasil_49722.wsgi:application
