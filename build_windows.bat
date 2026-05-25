@echo off
echo Installing dependencies...
pip install -r requirements.txt
echo Building executable...
pyinstaller --onefile --windowed --name WhatsAppDispatcher --add-data ".env.example;." main.py
echo Build complete. Check the dist folder.
pause
