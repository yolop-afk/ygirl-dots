#!/bin/bash

set -e

DOTFILES="$HOME/ygirl-dots"

echo "==> Installing dependencies..."

# -------------------------
# Colloid themes
# -------------------------

echo "==> Installing Colloid GTK theme..."
if [ ! -d "$HOME/Colloid-gtk-theme" ]; then
    git clone https://github.com/vinceliuice/Colloid-gtk-theme.git "$HOME/Colloid-gtk-theme"
fi

cd "$HOME/Colloid-gtk-theme"
./install.sh -t pink -s catppuccin


echo "==> Installing Colloid icon theme..."
if [ ! -d "$HOME/Colloid-icon-theme" ]; then
    git clone https://github.com/vinceliuice/Colloid-icon-theme.git "$HOME/Colloid-icon-theme"
fi

cd "$HOME/Colloid-icon-theme"
./install.sh -t default -s nord


# -------------------------
# .scripts
# -------------------------

echo "==> Installing scripts..."

mkdir -p "$HOME/.scripts"
mkdir -p "$HOME/.local/share/rofi/themes"

# Copy all scripts
cp -r "$DOTFILES/.scripts/." "$HOME/.scripts/"

# Move scripts.rasi to Rofi
if [ -f "$HOME/.scripts/scripts.rasi" ]; then
    mv "$HOME/.scripts/scripts.rasi" \
       "$HOME/.local/share/rofi/themes/scripts.rasi"
fi

# Make shell scripts executable
find "$HOME/.scripts" -type f -name "*.sh" -exec chmod +x {} \;


# -------------------------
# Done
# -------------------------

echo ""
echo "================================"
echo "   YGIRL DOTFILES INSTALLED"
echo "================================"
echo ""
