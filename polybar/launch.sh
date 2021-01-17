#!/usr/bin/env zsh

# Terminate already running bar instances

killall -q polybar

# Wait until the processes have been shut down

while pgrep -x polybar > /dev/null; do sleep 1; done

# Launch example

# polybar --reload sample &
polybar sample &

echo "Bars launched..."

