#!/bin/sh
SETTINGS_CONFIG="/home/nyx_gui/config/appsettings.json"
SETTINGS_BIN="/home/nyx_gui/bin/appsettings.json"

if cmp -s "$SETTINGS_CONFIG" "$SETTINGS_BIN"; then
    echo 'Same files'
else
    echo 'Different files'
    cp $SETTINGS_CONFIG $SETTINGS_BIN
fi
cd /home/nyx_gui/bin
chmod +x NyxGUI
/home/nyx_gui/bin/NyxGUI
