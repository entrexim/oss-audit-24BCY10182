#!/bin/bash
# Script 3: Disk and Permission Auditor
# Chosen Software: VLC Media Player

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
VLC_CONFIG="$HOME/.config/vlc"

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo ""
echo "=== VLC Specific Check ==="
if [ -d "$VLC_CONFIG" ]; then
    VLC_PERMS=$(ls -ld "$VLC_CONFIG" | awk '{print $1, $3, $4}')
    VLC_SIZE=$(du -sh "$VLC_CONFIG" 2>/dev/null | cut -f1)
    echo "VLC Config ($VLC_CONFIG) => Permissions: $VLC_PERMS | Size: $VLC_SIZE"
else
    echo "VLC config folder not found (run VLC once to create it)"
fi

