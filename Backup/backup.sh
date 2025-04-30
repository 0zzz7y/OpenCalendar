#!/bin/sh

TIMESTAMP=$(date +%Y%m%d-%H%M%S)
SRC_DB="/app/database/production.sqlite"
BACKUP_DIR="/app/backup"
BACKUP_FILE="$BACKUP_DIR/production-backup-$TIMESTAMP.sqlite"

mkdir -p "$BACKUP_DIR"

if [ -f "$SRC_DB" ]; then
  cp "$SRC_DB" "$BACKUP_FILE"
  echo "[OK] Backup created at $BACKUP_FILE"
else
  echo "[ERROR] Source DB not found at $SRC_DB"
fi
