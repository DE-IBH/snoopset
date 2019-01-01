# snoopset - DHCP snooping for ipset

This is a DHCP snooping daemon written in perl. It inspects DHCP packages
between DHCP clients and servers and updates client leases into a ipset as `ip,mac` tuples.

This can be used to prevent clients using of IP addresses not
assigned via DHCP using ebtables or iptables rules. The housekeeping of the ipset is done by the kernel since the ipset entries have a timeout corresponding to the DHCP lease time.


## Dependencies

- *Net::DHCP*
- *Net::Pcap*
- *ipset*


## Preperation

You need to initialize the ipset for *snoopset*:

```console
ipset create dhcp4_snoop hash:ip,mac family inet hashsize 4096 maxelem 65536 timeout 14400 counters comment forceadd
```

Required features:
- **`comment`** (*required*) - will contain the client's hostname and classid
- **`timeout`** (*required*) - ipset's timeout feature is used for housekeeping - you might use your default DHCP lease time

For the other optional features see also *ipset(8)*.

## Installation

### Traditional

On Debian systems all dependencies are available as packages:

```console
# apt install libnet-dhcp-perl libnet-pcap-perl ipset
```

### Docker

*TBD*
