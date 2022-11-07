#!/bin/sh

  docker run --rm \
  -e SCP_HOST=192.168.1.31 \
  -e SCP_USERNAME=dev \
  -e SCP_PORT=22 \
  -e SCP_KEY_PATH="~/.ssh/id_rsa" \
  -e SCP_SOURCE=README.md \
  -e SCP_TARGET=/drone/src/ \
  -v $(pwd):$(pwd) \
  -w $(pwd) \
  appleboy/drone-scp