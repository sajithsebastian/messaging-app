# Building the WhatsApp File Dispatcher Installer
pyinstaller --onefile --windowed --name WhatsAppDispatcher --add-data ".env.example;." main.py
