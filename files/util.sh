ip() {
  ifconfig -a | grep inet | grep broadcast | awk '{ print $2 }'
}

killp() {
  OLD_IFS=$IFS;
  lsof -i :$1 | grep TCP | while IFS= read -r line ; do
    kill -9 `echo $line | awk '{ print $2 }'`;
    echo `echo $line | awk '{ print $1 }'`" killed";
  done
  IFS=$OLD_IFS;
}

