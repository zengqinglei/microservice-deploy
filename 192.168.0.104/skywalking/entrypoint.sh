#!/bin/sh

application_path="/skywalking/config/application.yml"

echo "replace {zookeeper_hostPort} to ${zookeeper_hostPort}"
eval sed -i -e 's/\{zookeeper_hostPort\}/${zookeeper_hostPort}/' ${application_path}

echo "replace {naming_jetty_host} to ${naming_jetty_host}"
eval sed -i -e 's/\{naming_jetty_host\}/${naming_jetty_host}/' ${application_path}
echo "replace {naming_jetty_port} to ${naming_jetty_port}"
eval sed -i -e 's/\{naming_jetty_port\}/${naming_jetty_port}/' ${application_path}

echo "replace {remote_gRPC_host} to ${remote_gRPC_host}"
eval sed -i -e 's/\{remote_gRPC_host\}/${remote_gRPC_host}/' ${application_path}
echo "replace {remote_gRPC_port} to ${remote_gRPC_port}"
eval sed -i -e 's/\{remote_gRPC_port\}/${remote_gRPC_port}/' ${application_path}

echo "replace {agent_gRPC_host} to ${agent_gRPC_host}"
eval sed -i -e 's/\{agent_gRPC_host\}/${agent_gRPC_host}/' ${application_path}
echo "replace {agent_gRPC_port} to ${agent_gRPC_port}"
eval sed -i -e 's/\{agent_gRPC_port\}/${agent_gRPC_port}/' ${application_path}
echo "replace {agent_jetty_host} to ${agent_jetty_host}"
eval sed -i -e 's/\{agent_jetty_host\}/${agent_jetty_host}/' ${application_path}
echo "replace {agent_jetty_port} to ${agent_jetty_port}"
eval sed -i -e 's/\{agent_jetty_port\}/${agent_jetty_port}/' ${application_path}

echo "replace {ui_jetty_host} to ${ui_jetty_host}"
eval sed -i -e 's/\{ui_jetty_host\}/${ui_jetty_host}/' ${application_path}
echo "replace {ui_jetty_port} to ${ui_jetty_port}"
eval sed -i -e 's/\{ui_jetty_port\}/${ui_jetty_port}/' ${application_path}

echo "replace {storage_elasticsearch_clusterName} to ${storage_elasticsearch_clusterName}"
eval sed -i -e 's/\{storage_elasticsearch_clusterName\}/${storage_elasticsearch_clusterName}/' ${application_path}
echo "replace {storage_elasticsearch_clusterNodes} to ${storage_elasticsearch_clusterNodes}"
eval sed -i -e 's/\{storage_elasticsearch_clusterNodes\}/${storage_elasticsearch_clusterNodes}/' ${application_path}

exec "$@"