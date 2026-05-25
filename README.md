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

## 📱 WhatsApp Setup & Corporate Use

### 🧪 Testing with a Personal Account
To test the application without a business account, use the **Twilio WhatsApp Sandbox**:
1. Create a free account at [Twilio](https://www.twilio.com).
2. Go to the **Messaging > Try it out > Send a WhatsApp message** section in the Twilio Console.
3. Follow the instructions to join the sandbox (e.g., send `join <your-keyword>` to the provided sandbox number from your personal WhatsApp).
4. Use the `Account SID`, `Auth Token`, and the `Sandbox Number` in your `.env` file.
5. You can now send files to any personal account that has joined your sandbox.

### 🏢 Corporate / Production Setting
For a professional corporate deployment, you **must** use the official **WhatsApp Business API**.
- **Requirement**: You need a **WhatsApp Business Account (WABA)**.
- **Verification**: Your company must have a verified **Facebook Business Manager**.
- **Process**:
  1. Request access to the WhatsApp Business API via Twilio.
  2. Register your business phone number.
  3. Submit "Message Templates" for approval (WhatsApp requires templates for business-initiated messages).
  4. Once approved, replace your Sandbox credentials in `.env` with your production API credentials and your registered business number.

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
Run `build_windows.bat` to generate a standalone executable in the `dist/` directory.

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
- **Public URL**: Twilio requires a public URL to send files. Configure `MEDIA_BASE_URL` in `.env` to point to your publicly hosted files (e.g., S3 bucket).
- **OCR**: The application will download OCR models (~100MB) on the first run.

## 🧪 Testing
```bash
python3 -m pytest tests/
```
