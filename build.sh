#!/bin/bash
if [[ ! -f confd ]]; then
    wget https://github.com/kelseyhightower/confd/releases/download/v0.11.0/confd-0.11.0-linux-amd64
    mv confd-0.11.0-linux-amd64 confd
fi
docker build -t miguelgrinberg/easy-lb .
