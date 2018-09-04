Domain= registry.cn-shenzhen.aliyuncs.com
NAME = $(Domain)/zengql-release/skywalking
VERSION = 5.0.0-beta2

.PHONY: build release run remove

build:
	docker build -t $(NAME):$(VERSION) --build-arg SKYWALKING_VERSION=$(VERSION) .


release:
	docker login --username=413210209@qq.com $(Domain)
	docker push $(NAME):$(VERSION)
	docker tag $(NAME):$(VERSION) $(NAME):latest
	docker push $(NAME):latest

run:
	docker run -d --name=skywalking --restart=always \
		-p 18080:8080 \
		-p 10800:10800 \
		-p 11800:11800 \
		-p 12800:12800 \
		-e 'zookeeper_hostPort=localhost:2181' \
		-e 'naming_jetty_host=localhost' \
		-e 'remote_gRPC_host=localhost' \
		-e 'agent_gRPC_host=localhost' \
		-e 'agent_jetty_host=localhost' \
		-e 'ui_jetty_host=localhost' \
		-e 'storage_elasticsearch_clusterNodes=localhost:9300' \
		$(NAME):$(VERSION)

remove:
	docker stop skywalking
	docker rm skywalking
