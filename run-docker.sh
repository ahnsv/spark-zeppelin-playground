#!/usr/bin/env bash

docker run -p 8080:8080 --rm -v $PWD/logs:/logs -v $PWD/notebooks:/notebook -e ZEPPELIN_LOG_DIR='/logs' \
    -e ZEPPELIN_NOTEBOOK_DIR='/notebook' \
    --name zeppelin apache/zeppelin:0.9.0
