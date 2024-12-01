#!/bin/bash

while true; do
    layout=$(swaymsg -t get_inputs | jq -r '.[] | select(.type == "keyboard") | .xkb_active_layout_name' | head -n1)
    echo "{\"text\": \"$layout\", \"class\": \"$layout\"}"
    sleep 0.5
done

