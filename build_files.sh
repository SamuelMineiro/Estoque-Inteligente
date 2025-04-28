#!/bin/bash

pip install --upgrade -r requirements.txt
python manage.py collectstatic --noinput --clear
