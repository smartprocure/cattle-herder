#!/bin/bash
docker build -t registry.smartprocure.us/rancher/elasticsearch-conf .
docker push registry.smartprocure.us/rancher/elasticsearch-conf
