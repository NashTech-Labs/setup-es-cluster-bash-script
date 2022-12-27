#!/bin/bash

# Install Java
apt-get update
apt-get install openjdk-8-jdk

# Download and install Elasticsearch
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.10.1-linux-x86_64.tar.gz
tar -xzf elasticsearch-7.10.1-linux-x86_64.tar.gz

# Set the JAVA_HOME environment variable
echo "export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64" >> /etc/environment
source /etc/environment

# Configure Elasticsearch for a cluster
echo "cluster.name: my-cluster" >> elasticsearch-7.10.1/config/elasticsearch.yml
echo "node.name: node-$(hostname)" >> elasticsearch-7.10.1/config/elasticsearch.yml
echo "discovery.seed_hosts: [\"${node_1}\", \"${node_2}\", \"${node_3}\"]" >> elasticsearch-7.10.1/config/elasticsearch.yml
echo "cluster.initial_master_nodes: [\"${node_1}\", \"${node_2}\", \"${node-3}\"]" >> elasticsearch-7.10.1/config/elasticsearch.yml

# Replace "node-1", "node-2", and "node-3" with the hostnames of your Elasticsearch nodes

# Start Elasticsearch
cd elasticsearch-7.10.1/bin
./elasticsearch