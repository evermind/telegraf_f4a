#!/bin/bash -e
j2 /templates/telegraf.conf > /etc/telegraf/telegraf.conf
exec "$@"
