# WhatsApp File Dispatcher

A cross-platform application that monitors a folder for new documents and images, extracts a mobile number from the filename or content, and sends the file to that number via WhatsApp.

---

## 🚀 Quick Start (All Platforms)

1. **Get the code**: Clone or download this repository.
2. **Install Dependencies**:
   ```bash
   python3 -m pip install --upgrade pip
   python3 -m pip install -r requirements.txt
   ```
3. **Configure**: Copy `.env.example` to `.env` and fill in your Twilio credentials.
4. **Run**:
   ```bash
   python3 main.py --folder ./inbox
   ```

---

## 🪟 Windows Instructions

### Installation
- Use **PowerShell** as Administrator.
- Install Python 3.12+ from [python.org](https://www.python.org/).
- Run:
  ```powershell
  python -m pip install -r requirements.txt
  ```

### Building Standalone Setup (.exe)
We have provided a automated build script. To create a self-sufficient installer:
1. Run `build_windows.bat`.
2. This will generate a standalone executable in the `dist/` directory.

---

## 🍎 macOS Instructions

### Installation
- Ensure you use `python3` and `pip3` to avoid "command not found" errors.
- Run:
  ```bash
  python3 -m pip install -r requirements.txt
  ```

### Building Standalone DMG
1. Install `create-dmg`: `brew install create-dmg`
2. Run the build command:
   ```bash
   python3 -m PyInstaller --onefile --windowed --name WhatsAppDispatcher --add-data ".env.example:." main.py
   create-dmg --volname "WhatsApp Dispatcher" "WhatsAppDispatcher.dmg" ./dist/
   ```

---

## 🐧 Linux Instructions

### Installation
1. Install system dependencies:
   ```bash
   sudo apt update && sudo apt install python3 python3-pip
   ```
2. Run:
   ```bash
   python3 -m pip install -r requirements.txt
   ```

### Creating Tarball
Run `build_linux.sh` to package the app into a portable `.tar.gz` file.

---

## 🛠️ Requirements & Setup
- **Twilio**: Create an account at [twilio.com](https://www.twilio.com).
- **Public URL**: Twilio requires a public URL to send files. Configure `MEDIA_BASE_URL` in `.env` to point to your publicly hosted files.
- **OCR**: The application will download OCR models (~100MB) on the first run.

## 🧪 Testing
```bash
python3 -m pytest tests/
```
