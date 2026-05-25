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

## ⚙️ Configuration

The application can be configured in two ways:

### 1. Command Line (Recommended)
You can specify the folder to watch directly when starting the application using the `--folder` flag:
```bash
python3 main.py --folder "C:\Users\Documents\ScanInbox"
```

### 2. Environment Variables (.env file)
Open the `.env` file in your application folder and edit the following settings:
- **`WATCH_FOLDER`**: The full path to the folder you want to monitor.
- **`MEDIA_BASE_URL`**: (Optional) The public URL where you host your files.
- **`TWILIO_...`**: Your Twilio API credentials.

Example `.env`:
```text
WATCH_FOLDER=./my_scan_folder
MEDIA_BASE_URL=https://my-bucket.s3.amazonaws.com/files/
```

---

## 📱 WhatsApp Setup & Corporate Use

### 🧪 Testing with a Personal Account
To test the application without a business account, use the **Twilio WhatsApp Sandbox**:
1. Create a free account at [Twilio](https://www.twilio.com).
2. Go to the **Messaging > Try it out > Send a WhatsApp message** section in the Twilio Console.
3. Follow the instructions to join the sandbox (e.g., send `join <your-keyword>` to the provided sandbox number from your personal WhatsApp).
4. Use the `Account SID`, `Auth Token`, and the `Sandbox Number` in your `.env` file.

### 🏢 Corporate / Production Setting
For corporate deployment, you **must** use the official **WhatsApp Business API**:
- **Requirement**: You need a **WhatsApp Business Account (WABA)** verified through Facebook Business Manager.
- **Message Templates**: Production WhatsApp messages require pre-approved templates. You must create a template for "document delivery" in the Twilio console.

---

## 🪟 Windows Instructions

### Installation
- Use **PowerShell** as Administrator.
- Install Python 3.12+ from [python.org](https://www.python.org/).
- Run: `python -m pip install -r requirements.txt`

### Building Standalone Setup (.exe)
Run `build_windows.bat` to generate a standalone executable in the `dist/` directory.

---

## 🍎 macOS Instructions

### Installation
- Run: `python3 -m pip install -r requirements.txt`

### Building Standalone DMG
1. Install `create-dmg`: `brew install create-dmg`
2. Run `build_mac.sh`. This will generate `WhatsAppDispatcher.dmg` in the root folder.

---

## 🐧 Linux Instructions

### Installation
1. Install dependencies: `sudo apt update && sudo apt install python3 python3-pip`
2. Run: `python3 -m pip install -r requirements.txt`

---

## 🛠️ Common Requirements
- **Public URL**: Twilio requires a public URL to send actual files.
- **OCR**: The app downloads models (~100MB) on the first run.

## 🧪 Testing
`python3 -m pytest tests/`
