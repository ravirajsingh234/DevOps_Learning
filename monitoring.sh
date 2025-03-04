#!/bin/bash

echo "Monitoring script started..."

response=$(curl -sSf https://13.127.95.235:8080/status | grep -q "200 OK" && "Server is healthy" || echo "Server is down!") 

if [[ "$response" == *"Server is down!"* ]]; then
	echo "Sending alert mail"

fi

echo "Monitoring script completed"
