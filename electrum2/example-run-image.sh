#!/bin/bash
docker container run --name electrumx2 -d \
-p 50001:50001 \
# USB flash drive path for storing the blockchain database.
#-v /media/usb/mydrive:/srv/db \
# Connection information to the BCH full node.
#-e DAEMON_URL=http://rpcuser:rpcpass@ipaddr:port \
electrumx2
