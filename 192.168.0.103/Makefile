Host=192.168.0.103
Node=3
Workdir=~/workrelease
MysqlHost=192.168.0.105:3306
MysqlUserName=root
MysqlPassword=123456
ZookeeperServers=server.1=$(Host):2888:3888 server.2=192.168.0.104:2888:3888

.PHONY: run stop

run:
	if [ -z `grep -E vm.max_map_count /etc/sysctl.conf` ]; then \
		echo "vm.max_map_count=262144" >> /etc/sysctl.conf; \
	fi; \
	grep vm.max_map_count /etc/sysctl.conf; \
	env	Host=$(Host) \
		Node=$(Node) \
		Workdir=$(Workdir) \
		MysqlHost=$(MysqlHost) \
		MysqlUserName=$(MysqlUserName) \
		MysqlPassword=$(MysqlPassword) \
		ZookeeperServers=$(ZookeeperServers) \
		docker-compose up -d

stop:
	docker-compose down --remove-orphans