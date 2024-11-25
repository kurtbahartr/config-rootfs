#!/bin/sh

# Quick script to install the CA certificate for dormitory WiFi if ever needed.

# Download the CA to its intended directory
sudo wget -O /etc/ca-certificates/trust-source/anchors/dorm-ca.crt https://github.com/kurtbahartr/config-rootfs/raw/master/common/usr/local/share/ca-certificates/dorm-ca.crt
sudo trust extract-compat
