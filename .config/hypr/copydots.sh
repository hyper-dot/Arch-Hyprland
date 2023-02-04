#!/bin/sh

# copies hyprland wrapper binary from .local/bin dir
cp -r ~/.local/bin/wrappedhl ~/Arch-Hyprland/.local/bin

# Copies all config files from .config directory
cp -r ~/.config/waybar/ ~/Arch-Hyprland/.config/
cp -r ~/.config/Thunar/ ~/Arch-Hyprland/.config/
cp -r ~/.config/lvim/config.lua ~/Arch-Hyprland/.config/lvim/
cp -r ~/.config/hypr/ ~/Arch-Hyprland/.config/
cp -r ~/.config/gtk-3.0/ ~/Arch-Hyprland/.config/
cp -r ~/.config/gtk-2.0/ ~/Arch-Hyprland/.config/
cp -r ~/.config/cava/ ~/Arch-Hyprland/.config/
cp -r ~/.config/fish/ ~/Arch-Hyprland/.config/
cp -r ~/.config/alacritty/ ~/Arch-Hyprland/.config/alacritty
cp -r ~/.config/dunst/ ~/Arch-Hyprland/.config/

# copies alacritty-colorscheme from home directory
cp -r ~/.alacritty-colorscheme/ ~/Arch-Hyprland/


# copies .profile from home directory
cp ~/.profile ~/Arch-Hyprland/
