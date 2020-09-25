#!/bin/bash

_IP=$(hostname -I | awk '{ print $1; }')

curl -X POST --data-urlencode "payload={\"username\": \"$SLACK_USERNAME_IP\", \"text\": \"$_IP\"}" $SLACK_WEBHOOK_IP