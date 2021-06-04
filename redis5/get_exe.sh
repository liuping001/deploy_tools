set -e
wget https://download.redis.io/releases/redis-5.0.12.tar.gz
tar xzvf redis-5.0.12.tar.gz
cd redis-5.0.12
path=$(pwd)
install_path=$(dirname $path)"/redis"
make PREFIX=$install_path install -j
cd ..
cp redis-5.0.12/redis.conf .
rm -rf redis-5.0.12*