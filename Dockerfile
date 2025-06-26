FROM nginx:1.29
MAINTAINER Mathieu Rochette "mathieu@texthtml.net"

EXPOSE 80

CMD ["/usr/local/bin/kibana"]

ADD kibana-3.1.0.tar.gz /opt/local/kibana/
ADD app /
