FROM alpine:3.8 AS skywalking-builder

# Skywalking version
ARG SKYWALKING_VERSION

ADD http://mirrors.hust.edu.cn/apache/incubator/skywalking/${SKYWALKING_VERSION}/apache-skywalking-apm-incubating-${SKYWALKING_VERSION}.tar.gz /skywalking.tar.gz

RUN mkdir -p /skywalking \
    && tar -zxvf /skywalking.tar.gz  --strip 1 -C /skywalking


FROM java:openjdk-8u111-jre
LABEL MAINTAINER zengql <zengql@live.cn>

# Skywalking version
ARG SKYWALKING_VERSION

# Skywalking environment configuration
ENV zookeeper_hostPort=localhost:2181 \
    naming_jetty_host=localhost  \
    naming_jetty_port=10800 \
    remote_gRPC_host=localhost  \
    remote_gRPC_port=11800  \
    agent_gRPC_host=localhost \
    agent_gRPC_port=11800 \
    agent_jetty_host=localhost \
    agent_jetty_port=12800 \
    ui_jetty_host=localhost \
    ui_jetty_port=12800 \
    storage_elasticsearch_clusterName=CollectorDBCluster \
    storage_elasticsearch_clusterNodes=localhost:9300

COPY --from=skywalking-builder /skywalking /skywalking

# 1. install required libraries and tools
# 2. compile and install skywalking
# 3. remove skywalking sources and unnecessary libraries and tools
RUN rm -rf /skywalking/agent \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone

ADD application.yml /skywalking/config/application.yml
ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh