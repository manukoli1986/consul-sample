#!/bin/bash

echo "Starting Consul agent on node"

nohup consul agent -server -client=0.0.0.0 -bootstrap-expect=1 -datacenter=test1 -data-dir=/tmp/consul-data -ui -bind=$(hostname -I | cut -b 11-23) & 

