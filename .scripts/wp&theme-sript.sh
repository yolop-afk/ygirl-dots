#!/bin/bash
#this is mis-spelled on purpose
SCRIPT_DIR="$HOME/.scripts/wallpaper-changer-fr-now"
THEME="$HOME/.local/share/rofi/themes/scripts.rasi"

selected=$(
    {
        find "$SCRIPT_DIR" -maxdepth 1 -type f -executable -name '*.sh' ! -name 'rofi-scripts.sh' -printf '%f\n' |
        while read -r script; do
            name="${script%.sh}"
            icon="$SCRIPT_DIR/$name.png"

            printf '%s\0icon\x1f%s\n' "$script" "$icon"
        done
    } |
    rofi -dmenu -show-icons -p "Scripts" -theme "$THEME"
)

[ -z "$selected" ] && exit 0

"$SCRIPT_DIR/$selected"
