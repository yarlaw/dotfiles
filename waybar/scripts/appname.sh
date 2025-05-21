#!/bin/bash

# Get window info (null if no focused window)
window_info=$(hyprctl activewindow -j 2>/dev/null)

# Exit with "Nothing" if there's no focused window or nul432321l response
if [ -z "$window_info" ] || [ "$window_info" = "null" ]; then
  echo "Nothing"
  exit 0
fi

# Try to get initialClass or fallback to class
app=$(echo "$window_info" | jq -r '.initialClass // .class')

# If app is null or empty, say Nothing
if [ -z "$app" ] || [ "$app" = "null" ]; then
  echo "Nothing"
else
  echo "$app"
fi
