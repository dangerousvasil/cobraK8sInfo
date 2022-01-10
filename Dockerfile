#FROM alpine
FROM alpine:3.9
EXPOSE 80 8300 8301 8301/udp 8302 8302/udp 8400 8500 8600 8600/udp

COPY cobraK8sInfo /usr/bin
COPY consul /usr/bin
COPY run.sh /usr/bin
#ENTRYPOINT ["ls -la /"]
#CMD ["/cobraK8sInfo","httpd"]
CMD ["/usr/bin/run.sh"]
