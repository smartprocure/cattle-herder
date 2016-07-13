#!/bin/bash

set -e

while [ ! -f "/usr/share/elasticsearch/config/elasticsearch.yml" ]; do
    sleep 1
done

for plugin in $(echo $PLUGIN_TXT | tr "," "\n"); do
    /usr/share/elasticsearch/bin/plugin install $plugin
done

exec /docker-entrypoint.sh elasticsearch
