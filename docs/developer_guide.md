# Developer Documentation

## Use Case: Automated Document Delivery
Automating the delivery of documents (invoices, reports, prescriptions) to customers. ड्रॉप a file into a folder, and the system handles the identification and dispatch.

## Codebase Walkthrough

### `main.py`
The entry point. Handles configuration loading and initializes the services.

### `extractor.py`
Core logic for reading various file formats and applying OCR.

### `sender.py`
Wrapper for the Twilio API with support for media attachments and text fallbacks.
