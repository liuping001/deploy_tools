# deploy_tools
常用软件的部署
依赖工具[https://github.com/liuping001/deploy](https://github.com/liuping001/deploy)

# redis的部署
```shell
cd redis5/deploy
deploy redis push,start -e "port=7001 dest_dir=/data/redis1"
deploy redis push,start -e "port=7002 dest_dir=/data/redis2"
deploy redis push -e "port=7003 aof=yes daemonize=yes pass='requirepass my_redis_pass' port=6379 dest_dir=/tmp/"
```
### 支持的参数及其默认值
* aof=yes  
* daemonize=yes  
* pass='requirepass my_redis_pass'  
* bind='127.0.0.1'  
* port=6379  
* dest_dir=/tmp/  


# zookeeper的部署
```shell script
cd zookeeper/deploy
# 部署在本机测试
deploy zk1,zk2,zk3 push,cmd,start

# 修改node3对应的配置
deploy zk1,zk2,zk3 push,cmd,start -i node3

# 修改node7对应的配置
deploy zk1,zk2,zk3,zk4,zk5,zk6,zk7 push,cmd,start -i node7
```
# kafka的部署
```shell script
cd kafka/deploy
# 部署在本机测试
ansible -m shell -a " yum install java-1.8.0-openjdk-devel -y" -i inventory k1
deploy k1,k2,k3 push,cmd,start

# 修改node3对应的配置
ansible -m shell -a " yum install java-1.8.0-openjdk-devel -y" -i node3 all
deploy k1,k2,k3 push,cmd,start -i node3

# 修改node7对应的配置
ansible -m shell -a " yum install java-1.8.0-openjdk-devel -y" -i node7 all
deploy k1,k2,k3,k4,k5,k6,k7 push,cmd,start -i node7
```