#!/bin/bash

BIN_PATH="/usr/local/bin"
SHARE_PATH="/usr/local/share/alerty"
ALERT_SCRIPT="alerty"
DEFAULT_SOUND="alarm.mp3"

show_creds() {
    cat << "EOF"
 ________  ___       _______   ________  _________    ___    ___ 
|\   __  \|\  \     |\  ___ \ |\   __  \|\___   ___\ |\  \  /  /|
\ \  \|\  \ \  \    \ \   __/|\ \  \|\  \|___ \  \_| \ \  \/  / /
 \ \   __  \ \  \    \ \  \_|/_\ \   _  _\   \ \  \   \ \    / / 
  \ \  \ \  \ \  \____\ \  \_|\ \ \  \\  \|   \ \  \   \/  /  /  
   \ \__\ \__\ \_______\ \_______\ \__\\ _\    \ \__\__/  / /    
    \|__|\|__|\|_______|\|_______|\|__|\|__|    \|__|\___/ /     
                                                    \|___|/      
                                                                 
          DM sinhSlumbering if you ever get jumpscared 
EOF
    exit 0
}
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root (e.g., sudo ./install.sh)"
  exit 1
fi

echo "Creating directory $SHARE_PATH for default sound..."
mkdir -p "$SHARE_PATH"

echo "Installing $ALERT_SCRIPT to $BIN_PATH..."
cp "$ALERT_SCRIPT" "$BIN_PATH/"
chmod +x "$BIN_PATH/$ALERT_SCRIPT"

echo "Copying $DEFAULT_SOUND to $SHARE_PATH..."
cp "$DEFAULT_SOUND" "$SHARE_PATH/"

echo "Installation complete"
