#!/bin/bash

# File: lock.sh
# Author: Abhishek Yadav
# Upstream: https://github.com/b4skyx/unix-scripts

# Pretty lockscreen implementation using i3lock-color
# Bind this script to a keybind or run using xautolock to execute it on idle/sleep.

# Note: Works only with the i3lock latest version. They changed some flags which broke backwards compatibility.

CLOCK_FONT="FiraCode Nerd Font"
FONT="FiraCode Nerd Font"

status=$(mpc|sed -n "2,1p"|awk '{print $1}' || true)
music_paused_on_lock=false

lock() {
        i3lock -n -c 00000066 -e --fill \
                --ind-pos="w/2:h-24"\
                --radius=20 --ring-width=8 \
                --ring-color=31363b00 --ringver-color=474f5400 --ringwrong-color=474f5400 \
                --inside-color=474f54 --insidever-color=d39bb600 --insidewrong-color=d39bb600\
                --line-uses-inside \
                --time-str="%I:%M %p" --time-pos="w/2:h/2-70" \
                --time-color=bfddb2 --timeoutline-color=868686  --time-font="$CLOCK_FONT:style=Bold" --time-size=64 \
                --date-pos="tx:ty+42"\
                --date-color=b3cfa7 --date-font="$FONT:style=Bold" --date-size=24 \
                --keylayout 2 --layout-pos="18:h-18" --layout-color=999f93 --layout-align=1\
                --layout-font="$FONT" \
                --verif-text="Matching Passphrase" --verif-pos="w/2:h/2+18" \
                --verif-color=999f93 --verif-font="$FONT" --verif-size=24 \
                --wrong-text="Invalid Passphrase!" --wrong-pos="w/2:h/2+18" \
                --wrong-color=d76e6e --wrong-font="$FONT" --wrong-size=24 \
                --noinput-text="No Input"
}

# Pause the current playing song
if [ "$status" == "[playing]" ]; then
	mpc pause &
	music_paused_on_lock=true
fi

# Pause dunst notifications
dunstctl set-paused true

# kill all rofi instances
if pgrep -x rofi; then
	killall rofi
fi

# lock the screen
lock

# Resume playback on unlock
if [ "$music_paused_on_lock" = true ]; then
	mpc play
fi

# Resume dunst notifications
dunstctl set-paused false
