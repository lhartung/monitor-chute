FROM ubuntu:16.04
RUN apt-get update && apt-get install -y tcpdump iw iputils-ping
ADD run.sh /usr/local/bin/
CMD ["/usr/local/bin/run.sh"]
