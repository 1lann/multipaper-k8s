#!/bin/bash
BUILDROOT=$(pwd)

cd "$BUILDROOT/master"
bash build.sh

cd "$BUILDROOT/worker"
bash build.sh

cd "$BUILDROOT/bootstrap"
bash build.sh
