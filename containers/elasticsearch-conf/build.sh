#!/bin/bash
docker build -t registry.smartprocure.us/rancher/elasticsearch-conf:v3 .
docker push registry.smartprocure.us/rancher/elasticsearch-conf:v3
