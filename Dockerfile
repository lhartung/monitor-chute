FROM ubuntu:16.04
RUN apt-get update && apt-get install -y tcpdump wireless-tools
ADD run.sh /usr/local/bin/
CMD ["/usr/local/bin/run.sh"]
