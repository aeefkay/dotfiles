#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}
run ~/.screenlayout/main.sh &
run feh --bg-fill ~/wallpaper/21-9/25.png &
run lxsession &
run volumeicon &
run picom -f &


