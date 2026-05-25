#!/bin/bash
echo "Packaging for Linux..."
TAR_NAME="whatsapp-dispatcher-linux.tar.gz"
tar -czvf \$TAR_NAME main.py extractor.py sender.py watcher.py requirements.txt .env.example tests/
echo "Created \$TAR_NAME"
