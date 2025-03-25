#!/bin/bash
#
## Check if a log file is provided as an argument
#if [ $# -ne 1 ]; then
#    echo "Usage: $0 <logfile>"
#        exit 1
#        fi
#
#        LOG_FILE="$1"
#
#        # Check if the file exists
#        if [ ! -f "$LOG_FILE" ]; then
#            echo "Error: File '$LOG_FILE' not found!"
#                exit 1
#                fi
#
#                # Top 5 IP addresses with the most requests
#                echo "📌 Top 5 IP addresses with the most requests:"
#                awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5
#
#                echo ""
#                # Top 5 most requested paths
#                echo "📌 Top 5 most requested paths:"
#                awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5
#
#                echo ""
#                # Top 5 response status codes
#                echo "📌 Top 5 response status codes:"
#                awk '{print $9}' "$LOG_FILE" | grep -E '^[0-9]+$' | sort | uniq -c | sort -rn | head -5
#
#                echo ""
#                # Top 5 user agents
#                echo "📌 Top 5 user agents:"
#                awk -F'"' '{print $6}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5
#
