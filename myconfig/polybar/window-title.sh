#!/bin/bash
xdotool getwindowfocus getwindowname 2>/dev/null || echo "No window"
