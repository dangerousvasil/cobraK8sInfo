#!/bin/bash
PKG='cobraK8sInfo'

#VARS
FILE=$(realpath ${BASH_SOURCE[0]})
DIR="$(dirname ${FILE})"
## all in one

rm ${PKG}
CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o ${PKG} .

