#!/bin/bash
echo "Cleaning old builds..."
rm -rf build dist *.dmg
echo "Building macOS application..."
python3 -m pip install -r requirements.txt
python3 -m PyInstaller --onefile --windowed --name WhatsAppDispatcher --add-data ".env.example:." main.py
if [ $? -eq 0 ]; then
    echo "Creating DMG..."
    if command -v create-dmg &> /dev/null; then
        create-dmg --volname "WhatsApp Dispatcher" "WhatsAppDispatcher.dmg" ./dist/
    else
        echo "Warning: create-dmg not found. Skipping DMG creation. Check dist/ folder for .app"
    fi
fi
