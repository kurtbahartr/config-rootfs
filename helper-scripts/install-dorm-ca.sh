#!/bin/sh

# Quick script to install the CA certificate for dormitory WiFi if ever needed.

# Download the CA to its intended directory
sudo mkdir /usr/local/share/ca-certificates/
sudo wget -O /usr/local/share/ca-certificates/dorm-ca.crt https://github.com/kurtbahartr/config-rootfs/raw/master/common/usr/local/share/ca-certificates/dorm-ca.crt
sudo update-ca-certificates # FIXME: This is the way Ubuntu (and probably Debian itself too) handles CA certs. It might be different on other distros.
