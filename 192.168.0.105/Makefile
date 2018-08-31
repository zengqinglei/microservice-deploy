Host=192.168.0.105
ConsulJoinHost=192.168.0.103
Node=5
Workdir=~/workrelease

.PHONY: run stop

run:
	env	Host=$(Host) \
		ConsulJoinHost=$(ConsulJoinHost) \
		Node=$(Node) \
		Workdir=$(Workdir) \
		docker-compose up -d

stop:
	docker-compose down --remove-orphans