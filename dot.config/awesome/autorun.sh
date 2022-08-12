#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}
run nitrogen --restore &
run lxsession &
run volumeicon &
run picom -f &
run ~/.screenlayout/main.sh &


