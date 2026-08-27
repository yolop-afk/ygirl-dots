#!/bin/bash
awww img --transition-type grow --transition-pos 0.854,0977 --transition-step 90 ~/.scripts/wallpaper-changer-fr-now/wallpaper-pi2.png

sed -i '1s/colors-[^"]*\.css/colors-pi.css/' ~/.config/waybar/style.css
pkill waybar
waybar &

gsettings set org.gnome.desktop.interface icon-theme "Colloid-Pink-Catppuccin"
gsettings set org.gnome.desktop.interface gtk-theme "'Colloid-Pink-Dark-Nord'"

sed -i '78c\active_border   = { colors = {"rgba(ffb6c1ee)", "rgba(ffb6feee)"}, angle = 45 },' ~/.config/hypr/hyprland.lua

sed -i '5c\include mocha.conf' ~/.config/kitty/kitty.conf

sed -i '187c\@theme "/home/yolop/.local/share/rofi/themes/squared-pink-unicorn-fart.rasi"' ~/.config/rofi/config.rasi
