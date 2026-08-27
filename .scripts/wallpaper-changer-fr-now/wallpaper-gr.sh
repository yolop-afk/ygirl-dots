#!/bin/bash
awww img --transition-type grow --transition-pos 0.854,0977 --transition-step 90 ~/.scripts/wallpaper-changer-fr-now/wallpaper-gr.png

sed -i '1s/colors-[^"]*\.css/colors-gr.css/' ~/.config/waybar/style.css
pkill waybar
waybar &

gsettings set org.gnome.desktop.interface icon-theme "'Colloid-Green-Everforest'"
gsettings set org.gnome.desktop.interface gtk-theme "'Colloid-Green-Dark-Everforest'"

sed -i '78c\active_border   = { colors = {"rgba(a7c080ee)", "rgba(a7c080ee)"}, angle = 45 },' ~/.config/hypr/hyprland.lua

sed -i '5c\include everforest.conf' ~/.config/kitty/kitty.conf

sed -i '187c\@theme "/home/yolop/.local/share/rofi/themes/squared-everforest.rasi"' ~/.config/rofi/config.rasi
