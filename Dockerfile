FROM scratch
#FROM alpine:3.9

COPY cobraK8sInfo /
#ENTRYPOINT ["ls -la /"]
CMD ["/cobraK8sInfo","httpd"]