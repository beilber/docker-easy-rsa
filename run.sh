#!/bin/bash

. ./env.cfg

docker run -it --rm \
    -v $(pwd)/keys:/opt/easy-rsa/keys \
    -v $(pwd)/easy-rsa.settings:/opt/easy-rsa/vars \
    ${IMAGE_NAME}
