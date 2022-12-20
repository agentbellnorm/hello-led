#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail
set -o xtrace


readonly TARGET_HOST=pi@mediapi
readonly TARGET_PATH=/home/pi/hello-led
readonly TARGET_ARCH=armv7-unknown-linux-musleabihf
readonly SOURCE_PATH=./target/${TARGET_ARCH}/release/hello-led

cargo build --release
rsync ${SOURCE_PATH} ${TARGET_HOST}:${TARGET_PATH}
ssh -t ${TARGET_HOST} ${TARGET_PATH}