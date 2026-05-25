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
3. **Configure**: Create a file named `.env` in the root folder (see the **Configuration** section below).
4. **Run**:
   ```bash
   python3 main.py
   ```

---

## ⚙️ Configuration

The application is primarily configured using a file named `.env`. 

### 1. Populate the `.env` file
Copy `.env.example` to a new file named `.env` and fill in your details:

**Windows (PowerShell):**
```powershell
cp .env.example .env
```

**macOS / Linux:**
```bash
cp .env.example .env
```

### 2. Required Settings
Open the `.env` file in any text editor and update these fields:

| Variable | Description | Example |
| :--- | :--- | :--- |
| **`WATCH_FOLDER`** | The folder to scan for new files. | `C:\Users\ScanInbox` or `./inbox` |
| **`TWILIO_ACCOUNT_SID`** | Your Twilio Account SID. | `ACxxxxxxxxxxxxxxxxxxxx` |
| **`TWILIO_AUTH_TOKEN`** | Your Twilio Auth Token. | `yyyyyyyyyyyyyyyyyyyyyyyy` |
| **`TWILIO_FROM_NUMBER`** | Your Twilio WhatsApp number. | `+14155238886` |
| **`MEDIA_BASE_URL`** | (Optional) Public URL for file hosting. | `https://my-bucket.s3.amazonaws.com/` |

---

## 📱 WhatsApp Setup & Corporate Use

### 🧪 Testing with a Personal Account
To test the application without a business account, use the **Twilio WhatsApp Sandbox**:
1. Create a free account at [Twilio](https://www.twilio.com).
2. Go to **Messaging > Try it out > Send a WhatsApp message** in the Twilio Console.
3. Send `join <your-keyword>` to the provided sandbox number from your personal WhatsApp.
4. Use the Sandbox credentials in your `.env`.

### 🏢 Corporate / Production Setting
For corporate deployment, you **must** use the official **WhatsApp Business API**:
- **Requirement**: A **WhatsApp Business Account (WABA)** verified via Facebook Business Manager.
- **Message Templates**: Production messages require pre-approved templates (approved in the Twilio console).

---

## 🪟 Windows Instructions

### Installation
- Install Python 3.12+ from [python.org](https://www.python.org/).
- Run: `python -m pip install -r requirements.txt`

### Building Standalone Setup (.exe)
Run `build_windows.bat`. This uses `PyInstaller` to bundle the app and your configuration template.

---

## 🍎 macOS Instructions

### Installation
- Run: `python3 -m pip install -r requirements.txt`

### Building Standalone DMG
1. Install `create-dmg`: `brew install create-dmg`
2. Run `build_mac.sh`. This generates `WhatsAppDispatcher.dmg`.

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
