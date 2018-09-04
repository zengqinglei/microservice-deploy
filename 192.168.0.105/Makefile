Host=192.168.0.105
ConsulJoinHost=192.168.0.102
Workdir=~/workrelease
MysqlPassword=123456
MssqlPassword=Sa123456

.PHONY: run stop

run:
	env	Host=$(Host) \
		ConsulJoinHost=$(ConsulJoinHost) \
		Workdir=$(Workdir) \
		MysqlPassword=$(MysqlPassword) \
		MssqlPassword=$(MssqlPassword) \
		docker-compose up -d

stop:
	docker-compose down --remove-orphans
