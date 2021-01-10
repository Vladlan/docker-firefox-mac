FROM centos:7
RUN yum install firefox -y 
CMD ["/usr/bin/firefox"]
