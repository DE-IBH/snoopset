# snoopset - DHCP snooping for ipset

This is a DHCP snooping daemon written in perl. It inspects DHCP packages
between DHCP clients and servers and updates client leases into a ipset as `ip,mac` tuples.

This can be used to prevent the clients the use of IP addresses not
assigned via DHCP using ebtables or iptables rules.


## Dependencies

- *Net::DHCP*
- *Net::Pcap*
- *ipset*


## Installation

### Traditional

On Debian systems all dependencies are available as packages:

```console
# apt install libnet-dhcp-perl libnet-pcap-perl ipset
```

### Docker

*TBD*
