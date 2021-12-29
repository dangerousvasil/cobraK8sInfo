#!/bin/bash
PKG='cobraK8sInfo'

#VARS
FILE=$(realpath ${BASH_SOURCE[0]})
DIR="$(dirname ${FILE})"
## all in one

rm ${PKG}
CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o ${PKG} .

if [ ! -f consul ]; then
  wget https://releases.hashicorp.com/consul/1.11.1/consul_1.11.1_linux_amd64.zip
  unzip consul_*.zip
  rm consul_*.zip
fi
