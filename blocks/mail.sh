#!/bin/sh

unread="$(find "${XDG_DATA_HOME:-$HOME/.local/share}"/mail/*/[Ii][Nn][Bb][Oo][Xx]/new/* -type f | wc -l 2>/dev/null)"

pidof mbsync >/dev/null 2>&1 && icon="痢"

[ "$unread" = "0" ] && [ "$icon" = "" ] || echo "[1] $unread$icon"

# echo "test"