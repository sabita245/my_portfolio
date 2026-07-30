#!/bin/bash

LOG_DIR="/var/log"

echo "Files older than 30 days that will be deleted:"
echo "---------------------------------------------"

sudo find "$LOG_DIR" -type f -name "*.log" -mtime +30 -print

echo
read -p "Do you want to delete these files? (yes/no): " choice

if [ "$choice" = "yes" ]
then
    sudo find "$LOG_DIR" -type f -name "*.log" -mtime +30 -delete
    echo "Old logs deleted successfully."
else
    echo "Deletion cancelled."
fi