#!/bin/sh
# Screen layout
feh --no-fehbg --bg-fill /home/afk/wallpaper/21-9/26.png' '/home/afk/wallpaper/9-16/29.png &
xrandr --output DP-2 --primary --mode 3440x1440 --rate 100 --pos 0x413 --rotate normal --output DP-0 --mode 1920x1080 --pos 3440x0 --rotate right &
picom & disown # --experimental-backends --vsync should prevent screen tearing on most setups if needed
# Low battery notifier
~/.config/qtile/scripts/check_battery.sh & disown
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & disown # start polkit agent from GNOME
