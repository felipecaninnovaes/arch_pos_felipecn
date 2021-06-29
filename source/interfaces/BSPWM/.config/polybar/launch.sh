#!/usr/bin/env sh

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do speep 1; done
polybar -c ~/.config/polybar/config example &
