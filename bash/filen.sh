#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FILEN_MOUNT_HOME="$HOME/filen-mount"
FILEN_LINK="$SCRIPT_DIR/filen"

echo "Filen Mount Setup"
echo "================="

# Force unmount any stale mounts
echo "Force unmounting any stale mounts..."
fusermount3 -uz "$FILEN_MOUNT_HOME" 2>/dev/null || true
sleep 1

# Create mount point in home directory
if [ ! -d "$FILEN_MOUNT_HOME" ]; then
    echo "Creating $FILEN_MOUNT_HOME..."
    mkdir -p "$FILEN_MOUNT_HOME"
else
    echo "$FILEN_MOUNT_HOME already exists"
fi

# Create symlink in project directory
if [ ! -L "$FILEN_LINK" ]; then
    echo "Creating symlink from $FILEN_LINK to $FILEN_MOUNT_HOME..."
    ln -s "$FILEN_MOUNT_HOME" "$FILEN_LINK"
else
    echo "Symlink already exists at $FILEN_LINK"
fi

# Mount Filen drive
echo ""
echo "Mounting Filen drive..."
filen mount "$FILEN_MOUNT_HOME"
