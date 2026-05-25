# WhatsApp File Dispatcher

A cross-platform application that monitors a folder for new documents and images, extracts a mobile number from the filename or content, and sends the file to that number via WhatsApp.

---

## 🪟 Windows Instructions

### Installation
1. **Install Python**: Download and install Python 3.12+ from [python.org](https://www.python.org/). Ensure "Add Python to PATH" is checked.
2. **Clone/Download**: Extract the source code to a folder (e.g., `C:\WhatsAppDispatcher\`).
3. **Install Dependencies**:
   Open PowerShell or CMD in the folder and run:
   ```bash
   pip install -r requirements.txt
   ```
4. **Configuration**:
   Copy `.env.example` to `.env` and enter your Twilio credentials.

### Usage
- **Run as Script**:
  ```bash
  python main.py --folder ./inbox
  ```
- **Create Installer (.exe)**:
  ```bash
  pyinstaller --onefile --windowed --name WhatsAppDispatcher --add-data ".env.example;." main.py
  ```
  The executable will be in the `dist/` folder.

---

## 🍎 macOS Instructions

### Installation
1. **Install Python**: We recommend using [Homebrew](https://brew.sh/):
   ```bash
   brew install python
   ```
2. **Install Dependencies**:
   ```bash
   pip3 install -r requirements.txt
   ```
3. **Configuration**:
   ```bash
   cp .env.example .env
   ```
   Edit `.env` with your Twilio Account SID, Auth Token, and Numbers.

### Usage
- **Run as Script**:
  ```bash
  python3 main.py --folder ./inbox
  ```
- **Create Installer (.app)**:
  ```bash
  pyinstaller --onefile --windowed --name WhatsAppDispatcher --add-data ".env.example:." main.py
  ```
  The app bundle will be in the `dist/` folder.

---

## 🐧 Linux Instructions

### Installation
1. **Install Python and Dependencies**:
   On Ubuntu/Debian:
   ```bash
   sudo apt update
   sudo apt install python3 python3-pip python3-venv
   ```
2. **Setup Virtual Environment (Recommended)**:
   ```bash
   python3 -m venv venv
   source venv/bin/activate
   pip install -r requirements.txt
   ```
3. **Configuration**:
   ```bash
   cp .env.example .env
   # Edit .env with your credentials
   ```

### Usage
- **Run the app**:
  ```bash
  python3 main.py --folder /path/to/watch
  ```
- **Run in Background**:
  ```bash
  python3 main.py --folder ./inbox &
  ```

---

## 🛠️ Common Requirements
- **Twilio Account**: You need a Twilio account with the WhatsApp Sandbox (or a production number) enabled.
- **Public Media URL**: For Twilio to send the actual file, the file must be hosted on a public URL (e.g., AWS S3, Google Cloud Storage). Configure `MEDIA_BASE_URL` in your `.env` to point to your public upload directory.
- **OCR Models**: On the first run, the app will download approximately 100MB of OCR models for number detection in images.

## 🧪 Testing
Run the test suite to verify your setup:
```bash
export PYTHONPATH=$PYTHONPATH:.
pytest tests/
```
