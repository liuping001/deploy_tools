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
deploy zk1,zk2,zk3 push,start

# 修改node3对应的配置
deploy zk1,zk2,zk3 push,start -i node3

# 修改node7对应的配置
deploy zk1,zk2,zk3,zk4,zk5,zk6,zk7 push,start -i node7
```