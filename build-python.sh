#!/bin/bash

set -eo pipefail

build_docker_image () {
	IMAGE_NAME=$1;
	IMAGE_PATH="python/${IMAGE_NAME}"

	docker build -t "olavim/python-${IMAGE_NAME}:latest" "${IMAGE_PATH}"
}

if [[ -z "$1" ]]; then
	echo ""
	echo "Usage:  build-python <image>";
	echo ""
	exit 1;
fi

build_docker_image "$1"
