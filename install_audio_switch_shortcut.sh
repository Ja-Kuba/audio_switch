#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
TARGET="$SCRIPT_DIR/audio_switch"
KEYBINDING_PATH="/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"

if [[ ! -f "$TARGET" ]]; then
    echo "Error: script not found at $TARGET"
    exit 1
fi

chmod +x "$TARGET"

if ! command -v rofi >/dev/null 2>&1; then
    echo "Installing rofi..."
    sudo apt update
    sudo apt install -y rofi
fi

if ! command -v gsettings >/dev/null 2>&1; then
    echo "Error: gsettings is not available. This installer is for Ubuntu/GNOME-based desktops."
    exit 1
fi

gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['$KEYBINDING_PATH']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:"$KEYBINDING_PATH" name "'Audio Switch'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:"$KEYBINDING_PATH" command "'$TARGET'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:"$KEYBINDING_PATH" binding "'<Super><Shift>v'"

echo "Installed. Press Super + Shift + V to switch audio output."
