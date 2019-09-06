#!/bin/bash

set -eo pipefail

build_docker_image () {
	IMAGE_NAME=$1;
	IMAGE_PATH="ci-bases/${IMAGE_NAME}"

	docker build -t "olavim/ci-${IMAGE_NAME}:latest" "${IMAGE_PATH}"
}

if [[ -z "$1" ]]; then
	echo ""
	echo "Usage:  build-ci <image>";
	echo ""
	exit 1;
fi

build_docker_image "$1"
