#!/bin/bash
docker build -t registry.smartprocure.us/rancher/elasticsearch-conf:v2 .
docker push registry.smartprocure.us/rancher/elasticsearch-conf:v2
