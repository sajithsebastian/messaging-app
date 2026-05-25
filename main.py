import os
import argparse
from dotenv import load_dotenv
from watcher import FolderWatcher
from sender import WhatsAppSender

def main():
    load_dotenv()
    parser = argparse.ArgumentParser(description="WhatsApp File Dispatcher")
    parser.add_argument("--folder", type=str, help="Folder to monitor", default=os.getenv("WATCH_FOLDER", "./watch"))
    args = parser.parse_args()
    watch_folder = args.folder
    if not os.path.exists(watch_folder):
        print(f"Creating watch folder: {watch_folder}")
        os.makedirs(watch_folder)
    sender = WhatsAppSender()
    watcher = FolderWatcher(watch_folder, sender)
    watcher.start()

if __name__ == "__main__":
    main()
