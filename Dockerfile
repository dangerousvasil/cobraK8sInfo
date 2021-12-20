FROM scratch
ADD cobraK8sInfo /cobraK8sInfo
CMD ["/cobraK8sInfo httpd"]