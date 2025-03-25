#!/bin/bash
#
## Set archive directory
#ARCHIVE_DIR="/var/log/archives"
#
## Ensure the archive directory exists
#mkdir -p "$ARCHIVE_DIR"
#
## Log file for storing archive history
#LOG_FILE="$ARCHIVE_DIR/archive_log.txt"
#
## Function to archive logs
#archive_logs() {
#    local log_dir="$1"
#
#        # Check if the log directory exists
#            if [ ! -d "$log_dir" ]; then
#                    echo "❌ Error: Directory '$log_dir' does not exist."
#                            exit 1
#                                fi
#
#                                    # Generate archive filename with timestamp
#                                        TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
#                                            ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"
#                                                ARCHIVE_PATH="$ARCHIVE_DIR/$ARCHIVE_NAME"
#
#                                                    # Compress logs
#                                                        tar -czf "$ARCHIVE_PATH" -C "$log_dir" .
#
#                                                            if [ $? -eq 0 ]; then
#                                                                    echo "$(date +"%Y-%m-%d %H:%M:%S") - Archived $log_dir to $ARCHIVE_PATH" >> "$LOG_FILE"
#                                                                            echo "✅ Logs archived successfully: $ARCHIVE_PATH"
#                                                                                else
#                                                                                        echo "❌ Failed to archive logs."
#                                                                                                exit 1
#                                                                                                    fi
#                                                                                                    }
#
#                                                                                                    # Check if the user provided an argument
#                                                                                                    if [ $# -ne 1 ]; then
#                                                                                                        echo "Usage: $0 <log-directory>"
#                                                                                                            exit 1
#                                                                                                            fi
#
#                                                                                                            # Run the function
#                                                                                                            archive_logs "$1"
#
