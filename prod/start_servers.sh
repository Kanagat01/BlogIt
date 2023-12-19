#!/bin/bash

source /root/blogit/venv/bin/activate
cd /root/blogit/

uwsgi --ini prod/uwsgi/uwsgi.ini &
daphne -u /tmp/daphne.sock -p 8000 config.asgi:application