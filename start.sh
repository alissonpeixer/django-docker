#!/bin/bash

if [ ! -e /app/core/manage.py  ]; then
    django-admin startproject core .
fi

python manage.py migrate
python manage.py collectstatic --noinput
python manage.py runserver 0.0.0.0:8000
