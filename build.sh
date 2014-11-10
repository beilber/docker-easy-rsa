#!/bin/bash

. ./env.cfg

docker build -t ${IMAGE_NAME} .
