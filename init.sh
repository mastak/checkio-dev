#!/bin/bash
echo "starting nginx..."
service nginx start

echo "starting postgresql..."
service postgresql start

echo "starting pip install..."
pip-accel install -r /opt/checkio/_requirements.txt

echo "starting migration..."
python /opt/checkio/manage.py migrate

echo "starting collectstatic..."
python /opt/checkio/manage.py collectstatic --clear --noinput

echo "runserver"
/opt/checkio/manage.py runserver 8000
