#!/bin/bash

echo "Monitoring script started..."
response=$(curl -o /dev/null -s -w "%{http_code}" http://13.127.95.235/:8080/login)

if [ "$response" -eq 200 ]; then
    echo "Jenkins is running."
else
    echo "Jenkins is down!"
fi

echo "Monitoring script completed"