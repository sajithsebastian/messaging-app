# Code Structure Reference

This document provides a detailed breakdown of each file in the repository.

## Core Logic

### `extractor.py`
Contains the `MobileNumberExtractor` class.
- **Responsibilities**: Identifying and cleaning phone numbers.
- **Dependencies**: `re`, `pypdf`, `docx`, `easyocr`.
- **Key Methods**:
    - `extract_from_pdf(path)`: Scans PDF text.
    - `extract_from_image(path)`: Performs OCR on images.
    - `sanitize_number(num)`: Converts numbers to E.164 format.

### `sender.py`
Contains the `WhatsAppSender` class.
- **Responsibilities**: Communicating with the Twilio API.
- **Key Features**: 
    - Automatic fallback to text-only if no public media URL is configured.
    - Mock mode for local testing without spending Twilio credits.

### `watcher.py`
Contains `FolderWatcher` and `NewFileHandler`.
- **Responsibilities**: Interfacing with the operating system to detect file arrivals.
- **Logic**: Uses a 1-second debounce to ensure files are fully written before extraction starts.

### `main.py`
- **Responsibilities**: Application orchestration and CLI argument parsing.

## Build and Configuration

### `app.spec`
The PyInstaller specification file. Configures how the application is bundled into a single executable, including hidden imports and data files.

### `build_windows.bat` / `build_mac.sh` / `build_linux.sh`
Platform-specific scripts to automate the build process locally.

### `.env.example`
A template for environment-based configuration. 

## CI/CD
### `.github/workflows/build.yml`
Defines the GitHub Actions pipeline that builds and uploads installers for Windows, macOS, and Linux on every push.
