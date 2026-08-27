#!/bin/bash
awww img --transition-type grow --transition-pos 0.854,0977 --transition-step 90 ~/.scripts/wallpaper-changer-fr-now/wallpaper-bl.png

sed -i '1s/colors-[^"]*\.css/colors-bl.css/' ~/.config/waybar/style.css
pkill waybar
waybar &

gsettings set org.gnome.desktop.interface icon-theme "'Colloid-Nord'"
gsettings set org.gnome.desktop.interface gtk-theme "'Colloid-Dark-Nord'"

sed -i '78c\active_border   = { colors = {"rgba(7a92cbee)", "rgba(5670aeee)"}, angle = 45 },' ~/.config/hypr/hyprland.lua

sed -i '5c\include nord.conf' ~/.config/kitty/kitty.conf

sed -i '187c\@theme "/home/yolop/.local/share/rofi/themes/squared-nord.rasi"' ~/.config/rofi/config.rasi
