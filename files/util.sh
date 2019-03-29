ip() {
  ifconfig -a | grep inet | grep broadcast | awk '{ print $2 }'
}

# kill the process using this port
killp() {
  OLD_IFS=$IFS;
  lsof -i :$1 | grep TCP | while IFS= read -r line ; do
    kill -9 `echo $line | awk '{ print $2 }'`;
    echo `echo $line | awk '{ print $1 }'`" killed";
  done
  IFS=$OLD_IFS;
}

findp() {
  ps aux | grep "$1"
}

adb_ip() {
  # nexus 7
  adb shell ifconfig wlan0 | grep inet | grep Bcast | awk '{ print $2 }' | cut -d':' -f 2
  # galaxy view - big
  adb shell ifconfig wlan0 | awk '{ print $3 }'
}

kill_cam() {
  sudo killall VDCAssistant
  sudo killall AppleCameraAssistant
}

