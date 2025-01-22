#!/bin/bash

export HOST=$1
export URI=$2

curl --include \
     --no-buffer \
     --header "Connection: Upgrade" \
     --header "Upgrade: websocket" \
     --header "Host: $HOST" \
     --header "Origin: http://$HOST" \
     --header "Sec-WebSocket-Key: SGVsbG8sIHdvcmxkIQ==" \
     --header "Sec-WebSocket-Version: 13" \
     http://$HOST/$URI
     