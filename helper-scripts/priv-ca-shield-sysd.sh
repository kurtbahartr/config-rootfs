#!/bin/bash

# Priv-CA-Shield-SysD: Sets up systemd-resolved to use Canadian Shield's
# "Private" servers as the DNS server. Combine this with zapret if you
# want true censorship circumvention.
#
# For context, Canadian Shield has three types of DNS servers:
#
#   1. Private:   Only resolves DNS servers. No additional safeguards
#                 are in place. This is perfect if you only lack trust
#                 in the DNS servers you're connected to by default.
#
#   2. Protected: Also protects against malware and phishing at DNS
#                 level.
#
#   3. Family:    Same as above with added protection against adult
#                 content as well.
#
# You can find a more thorough summary and DNS addresses at:
#
#   https://www.cira.ca/en/canadian-shield/configure/summary-cira-canadian-shield-dns-resolver-addresses/
#
# Usage: /path/to/priv-ca-shield-sysd.sh

sudo mkdir -p /etc/systemd/resolved.conf.d/
curl -s https://raw.githubusercontent.com/kurtbahartr/config-rootfs/master/common-sysd/etc/systemd/resolved.conf.d/priv-cira-dns.conf | sudo tee /etc/systemd/resolved.conf.d/priv-cira-dns.conf
