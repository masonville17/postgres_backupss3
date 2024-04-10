#! /bin/sh

# exit if a command fails
set -eo pipefail

apk update
apk add openssl aws-cli 
apk add --no-cache postgresql16-client --repository=https://dl-cdn.alpinelinux.org/alpine/edge/main
# cleanup
rm -rf /var/cache/apk/*
