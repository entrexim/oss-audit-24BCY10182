#!/bin/bash
# Script 2: FOSS Package Inspector
# Chosen Software: VLC Media Player

PACKAGE="vlc"

echo "=== FOSS Package Inspector ==="

# Check if installed (works on both Ubuntu and Fedora/RHEL)
if command -v dpkg >/dev/null && dpkg -l | grep -q "^ii  $PACKAGE "; then
    echo "$PACKAGE is installed (Debian/Ubuntu)."
    dpkg -s $PACKAGE | grep -E 'Version|Status|Description'
elif command -v rpm >/dev/null && rpm -q $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed (RPM-based)."
    rpm -qi $PACKAGE | grep -E 'Version|License|Summary'
else
    echo "$PACKAGE is NOT installed."
    echo "Install with: sudo apt install vlc   (or sudo dnf install vlc)"
fi

# Philosophy note using case
case $PACKAGE in
    vlc)
        echo ""
        echo "VLC Philosophy: Built by students in Paris to play ANY media format — completely free and open so no one can lock video away."
        ;;
esac

