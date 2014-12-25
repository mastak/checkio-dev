#!/bin/bash
echo "starting nginx..."
service nginx start

echo "starting postgresql..."
service postgresql start

echo "runserver..."
/opt/checkio/manage.py runserver 8000
