#!/bin/bash

WEBSITES=()
mapfile -t WEBSITES < "./websites.txt"

LOG_FILE="./website_status.log"
if [ ! -d "$(dirname "$LOG_FILE")" ]; then
    mkdir -p "$(dirname "$LOG_FILE")"
fi

true > "$LOG_FILE"

for website in "${WEBSITES[@]}"; do
    status_code=$(curl -I -s -o /dev/null -w "%{http_code}" -L "$website")
    echo "$website: $status_code - $(date '+%d.%m.%Y %H:%M:%S')"

    if [ "$status_code" -eq 200 ]; then
        echo "$website is UP" >> "$LOG_FILE"
        echo -e "\e[32m$website is UP and RUNNING\e[0m"
    else
        echo "$website is DOWN" >> "$LOG_FILE"
        echo -e "\e[31m$website is DOWN\e[0m"
    fi
done

echo -e "\e[34mWebsite status log saved to $LOG_FILE\e[0m"
   