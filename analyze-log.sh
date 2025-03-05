#!/bin/bash

echo "Log analysis script started...."

log_file="app.log"
search_term="ERROR"
count=$(grep -c "$search_term" "$log_file")

echo "Number of '$search_term' occurrences in '$log_file':$count"

if [[ $count -gt 10 ]]; then
	echo "sending alert mail..."
	# mail -s "Log Analysis Alert" singhraviraj123@gmail.com <<< "High number of errors detected in logs"
fi

echo "Log analysis script completed."

