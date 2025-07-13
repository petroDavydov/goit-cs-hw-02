#!/bin/bash

WEBSITES=("https://google.com", "https://facebook.com","https://twitter.com", "https://github.com", "https://copilot.microsoft.com", "<https://www.codewars.com", "https://academy.hackthebox.com/", "https://parrotsec.org/", "https://hackthebox.store/", "https://portswigger.net/") 

LOG_FILE="/task1/websitestatus.log"

REQUESTS_CURL="curl -I -s -o /dev/null -w '%{http_code}' -L $WEBSITES" 

 > "$log_file"

for website in "${WEBSITES[@]}"; do
    status_code=$REQUESTS_CURL
    echo "$website: $status_code" >> "$LOG_FILE"

    if [ $status_code -eq 200 ]; then
        echo "$website is up and running"
    else
        echo "$website is down"
    fi
done

echo "Website status log saved to $LOG_FILE"
   