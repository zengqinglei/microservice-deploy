Host=192.168.0.104
NodeId=3
Server1=192.168.0.102
Server2=192.168.0.103
Server3=$(Host)
Workdir=~/workrelease
MysqlHost=192.168.0.105:3306
MysqlUserName=root
MysqlPassword=123456

.PHONY: run stop

run:
	if [ -z `grep -E vm.max_map_count /etc/sysctl.conf` ]; then \
		echo "vm.max_map_count=262144" >> /etc/sysctl.conf; \
	fi; \
	grep vm.max_map_count /etc/sysctl.conf; \
	env	Host=$(Host) \
		NodeId=$(NodeId) \
		Server1=$(Server1) \
		Server2=$(Server2) \
		Server3=$(Server3) \
		Workdir=$(Workdir) \
		MysqlHost=$(MysqlHost) \
		MysqlUserName=$(MysqlUserName) \
		MysqlPassword=$(MysqlPassword) \
		docker-compose up -d

stop:
	docker-compose down --remove-orphans