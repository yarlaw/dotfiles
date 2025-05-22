#!/bin/bash

styles="$HOME/.config/wofi/macchiato/style.css"

if pgrep -x "wofi" > /dev/null; then
    pkill -x "wofi"
fi

wofi --show drun --style "$styles"
