#!/bin/bash
docker build -t registry.smartprocure.us/rancher/elasticsearch-conf:v1 .
docker push registry.smartprocure.us/rancher/elasticsearch-conf:v1
