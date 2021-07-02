#!/bin/sh

# Download and install brook
mkdir /tmp
wget -q https://github.com/txthinking/brook/releases/latest/download/brook_linux_amd64 -O /tmp/brook
install -m 755 /tmp/brook /usr/local/bin/brook

# Remove temporary directory
rm -rf /tmp

# Run V2Ray
/usr/local/bin/brook wsserver --listen :443 --password ${passwd}