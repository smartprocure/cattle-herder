#!/bin/bash

set -e

while [ ! -f "/usr/share/elasticsearch/config/elasticsearch.yml" ]; do
    sleep 1
done

for plugin in $(echo $PLUGIN_TXT | tr "," "\n"); do
    /usr/share/elasticsearch/bin/plugin install $plugin || true
done

echo "elasticsearch - nofile 65535" > /etc/security/limits.conf
echo "elasticsearch - memlock unlimited" > /etc/security/limits.conf
echo "vm.max_map_count=262144" > /etc/sysctl.d/max_map_count.conf
echo "vm.swappiness=0" > /etc/sysctl.d/swappiness.conf
sysctl -p

exec /docker-entrypoint.sh elasticsearch
