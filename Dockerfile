FROM debian:stretch-slim

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y perl libnet-dhcp-perl libnet-pcap-perl ipset

COPY src/snoopset /usr/local/sbin/

ENTRYPOINT ["/usr/local/sbin/snoopset"]
CMD ["--help"]
