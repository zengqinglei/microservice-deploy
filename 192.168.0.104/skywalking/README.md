# skywalking-docker 

**运行镜像**
``` bash
docker run -d --name=skywalking --restart=always --network=host \
-e 'zookeeper_hostPort=192.168.0.110:2181' \
-e 'naming_jetty_host=192.168.0.110' \
-e 'remote_gRPC_host=192.168.0.110' \
-e 'agent_gRPC_host=192.168.0.110' \
-e 'agent_jetty_host=192.168.0.110' \
-e 'ui_jetty_host=192.168.0.110' \
-e 'storage_elasticsearch_clusterNodes=192.168.0.110:9300' \
skywalking
```

**_待补充......_**
