#!/bin/sh

/consul  agent -dev -ui &
#/consul agent -data-dir /var/consul -config-dir /etc/consul.d/client &
#/consul agent -data-dir /var/consul  -ui &

/cobraK8sInfo httpd