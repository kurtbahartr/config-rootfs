#!/bin/bash

# Electron4AppArmor: Fix for Electron apps for systems using AppArmor.
#
# Many Google searches return either making a profile specifically for
# that AppImage or just disabling the restriction using sysctl
# altogether. This is known to impact AppImages rather than Electron
# apps but making a profile for '/**/chrome-sandbox', which is
# basically a global profile for executables named chrome-sandbox,
# located anywhere in the filesystem, seems to work just fine.
#
# Doing it this way instead of whitelisting AppImages within the profile
# will also help make AppImages containing Electron apps work
# regardless of their extensions!
#
# Usage: /path/to/electron4apparmor.sh

sudo mkdir -p /etc/apparmor.d
curl -s https://raw.githubusercontent.com/kurtbahartr/config-rootfs/master/common-apparmor/etc/apparmor.d/electron | sudo tee /etc/apparmor.d/electron-chrome-sandbox # Custom filename is to avoid conflict with possibly existing filenames while still making sense.
