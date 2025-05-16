#!/bin/bash

# List of services to check
SERVICES=(
  "nginx"
  "apache2"
  "mysql"
  # Add more services you want to monitor below, e.g.:
  # "docker"
  # 

LOGFILE="/var/log/service-health-check.log"

echo "=== Service Health Check started at $(date) ===" >> "$LOGFILE"

for SERVICE in "${SERVICES[@]}"
do
  if systemctl is-active --quiet "$SERVICE"; then
    echo "$(date): $SERVICE is running." >> "$LOGFILE"
  else
    echo "$(date): $SERVICE is NOT running. Attempting to start..." >> "$LOGFILE"
    systemctl start "$SERVICE"
    sleep 3
    if systemctl is-active --quiet "$SERVICE"; then
      echo "$(date): $SERVICE started successfully." >> "$LOGFILE"
    else
      echo "$(date): FAILED to start $SERVICE. Please check manually." >> "$LOGFILE"
    fi
  fi
done

echo "=== Service Health Check completed at $(date) ===" >> "$LOGFILE"
