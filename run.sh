#!/bin/bash

. ./env.cfg

docker run -it --rm -v $(pwd)/keys:/opt/easy-rsa/keys ${IMAGE_NAME}
