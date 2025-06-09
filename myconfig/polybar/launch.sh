#!/bin/bash

# kill polybar ถ้ามันรันอยู่ก่อน
killall -q polybar

# รอจนกว่ามันจะตายจริงๆ
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# รัน polybar ที่ชื่อ mybar (เปลี่ยนชื่อตาม config คุณ)
polybar mybar &

echo "Polybar launched..."
