# WhatsApp File Dispatcher

A cross-platform application that monitors a folder for new documents and images, extracts a mobile number from the filename or content, and sends the file to that number via WhatsApp.

---

## 🪟 Windows Instructions

### Installation (Ready-to-run)
1. **Download the Installer**: Run the `build_windows.bat` script on a Windows machine to generate a standalone `WhatsAppDispatcher.exe`.
2. **Setup**:
   - Create a folder `inbox` in the same directory as the `.exe`.
   - Configure your `.env` file with Twilio credentials.

### Building a Standalone EXE
Run this in your terminal:
```powershell
pip install -r requirements.txt
pyinstaller --onefile --windowed --name WhatsAppDispatcher --add-data ".env.example;." main.py
```

---

## 🍎 macOS Instructions

### Installation
1. **Prerequisites**: Ensure Python 3.12+ is installed.
2. **Setup**:
   ```bash
   pip3 install -r requirements.txt
   cp .env.example .env
   ```

### Building a DMG (Self-Sufficient)
To create a macOS Disk Image (.dmg):
1. Install `create-dmg`: `brew install create-dmg`
2. Run the build command:
   ```bash
   pyinstaller --onefile --windowed --name WhatsAppDispatcher --add-data ".env.example:." main.py
   create-dmg --volname "WhatsApp Dispatcher" --window-pos 200 120 --window-size 800 400 --icon-size 100 --icon "WhatsAppDispatcher.app" 200 190 --hide-extension "WhatsAppDispatcher.app" "WhatsAppDispatcher.dmg" ./dist/
   ```

---

## 🐧 Linux Instructions

### Installation (Tarball)
1. **Create Tarball**:
   ```bash
   tar -czvf whatsapp-dispatcher-linux.tar.gz main.py extractor.py sender.py watcher.py requirements.txt .env.example
   ```
2. **Deploy**: Extract and run:
   ```bash
   tar -xzvf whatsapp-dispatcher-linux.tar.gz
   pip3 install -r requirements.txt
   python3 main.py --folder ./inbox
   ```

---

## 🛠️ Common Requirements
- **Twilio Account**: Required for WhatsApp API access.
- **Public Media URL**: Twilio requires files to be hosted on a public URL. Configure `MEDIA_BASE_URL` in `.env`.
- **OCR Models**: Downloaded automatically on first run (~100MB).

## 🧪 Testing
```bash
export PYTHONPATH=$PYTHONPATH:.
pytest tests/
```
