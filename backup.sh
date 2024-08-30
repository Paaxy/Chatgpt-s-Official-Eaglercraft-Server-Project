#!/bin/bash
# Define variables
SERVER_DIR="/path/to/server"
BACKUP_DIR="/path/to/backups"
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_NAME="server-backup-$TIMESTAMP.tar.gz"

# Create backup
tar -czvf "$BACKUP_DIR/$BACKUP_NAME" "$SERVER_DIR"

# Keep only the last 7 backups
find "$BACKUP_DIR" -type f -name "*.tar.gz" -mtime +7 -exec rm {} \;
