#FROM alpine
FROM alpine:3.9

COPY cobraK8sInfo /
COPY consul/consul /
COPY run.sh /
#ENTRYPOINT ["ls -la /"]
#CMD ["/cobraK8sInfo","httpd"]
CMD ["/run.sh"]
