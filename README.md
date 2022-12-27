# README

This script installs Elasticsearch 7.10.1 and Java on each node, and then configures Elasticsearch for a multi-node cluster. 
It sets the `JAVA_HOME` environment variable and creates an elasticsearch.yml configuration file with the necessary settings for the cluster. 


## Envs

| Env | Description |
| - | - |
| node-1, node-2, node-3 | IP of the nodes |
| JAVA_HOME | Set the JAVA_HOME to the value of java path |


# Execute


To set up a multi-node Elasticsearch cluster, you will need to run this script on each node in the cluster. 

```
chmod +x script.sh
./script.sh
```

After running the script on all nodes, you can check the status of the cluster by running the following command on any of the nodes:

```
curl -X GET "localhost:9200/_cluster/health?pretty"
```

This should show the status of the cluster and the number of nodes in the cluster.
