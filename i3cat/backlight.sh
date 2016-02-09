#!/bin/sh

color='#f8f8f2'

get_status() {
  sleep 0.1
  echo $(cat /sys/class/backlight/acpi_video0/actual_brightness)
}

output_status() {
  rawstatus=$(get_status)
  status=$((($rawstatus+1)*100/16))
  echo '[{"name": "backlight", "instance": "backlight0", "full_text": "'${status}%'", "color": "'${color}'"}]'
}

output_status
trap output_status SIGUSR1

while :; do
  read 2> /dev/null
done
