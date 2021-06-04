path=$(pwd)/redis-server
action=$1

case $action in
"start")
  $path redis.conf
    ;;
"stop")
  pid_list=$(ps -ef|grep $path|grep -v grep |grep -v color|awk '{print $2}')
  for pid in ${pid_list}
  do
    kill $pid
  done
    ;;
"state")
  ps -ef|grep $path|grep -v grep |grep -v color
    ;;
*)
  exit 1
    ;;
esac