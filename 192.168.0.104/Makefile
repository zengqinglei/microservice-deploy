Host=192.168.0.104
ConsulJoinHost=192.168.0.103
Node=node04
Workdir=~/workrelease
MysqlHost=192.168.0.105:3306
MysqlUserName=root
MysqlPassword=123456

.PHONY: run stop

run:
	env	Host=$(Host) \
		ConsulJoinHost=$(ConsulJoinHost) \
		Node=$(Node) \
		Workdir=$(Workdir) \
		MysqlHost=$(MysqlHost) \
		MysqlUserName=$(MysqlUserName) \
		MysqlPassword=$(MysqlPassword) \
		docker-compose up -d

stop:
	docker-compose down --remove-orphans