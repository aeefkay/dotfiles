#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}
run lxsession &
run volumeicon &
run picom -f &
run xrandr -s 1920x1200


