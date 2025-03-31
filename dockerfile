FROM ubuntu:22.04

RUN apt-get -y update && apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install ddclient

COPY ./ddclient.conf /etc/ddclient.conf
COPY ./ddclient.sh /root/ddclient.sh
RUN chmod 600 /etc/ddclient.conf 
RUN chown root:root /etc/ddclient.conf

CMD ["/bin/sh", "/root/ddclient.sh"]
#CMD ["ddclient", "-daemon=120", "-debug", "-verbose", "-noquiet"]
#CMD ["bash", "-c", "ddclient -daemon=120 -debug -verbose -noquiet && tail -f /dev/null"]
#CMD ["/lib/systemd/systemd"]
#CMD ["/sbin/init"]