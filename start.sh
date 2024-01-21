#!/bin/bash

pip install --upgrade pip
pip3 install -r requirements.txt


if [ ! -e /projeto/core/manage.py  ]; then
    mkdir -p /projeto/static/
    django-admin startproject core .
fi

if [ ! -d "/projeto/app" ]; then
    python manage.py startapp app
fi

python manage.py migrate
python manage.py collectstatic --noinput
python manage.py runserver 0.0.0.0:8000
