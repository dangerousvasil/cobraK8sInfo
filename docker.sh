#!/bin/bash

#go build -o cobraK8sInfo
## all in one
CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o cobraK8sInfo .

