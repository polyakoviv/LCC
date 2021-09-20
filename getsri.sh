#!/bin/sh

echo $(echo -n "sha512-" && curl --silent "$@" | openssl dgst -sha512 -binary | openssl enc -base64 -A)
