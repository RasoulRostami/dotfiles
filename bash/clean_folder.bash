#!/bin/bash

# Specify the directory to be organized
DIRECTORY="$HOME/Downloads"

# Create directories for different file types
mkdir -p "$DIRECTORY/images"
mkdir -p "$DIRECTORY/videos"
mkdir -p "$DIRECTORY/documents"
mkdir -p "$DIRECTORY/archives"
mkdir -p "$DIRECTORY/apps"
mkdir -p "$DIRECTORY/extensions"
mkdir -p "$DIRECTORY/others"

# Move files to corresponding directories
for file in "$DIRECTORY"/*; do
    if [ -f "$file" ]; then
        case "$file" in
            *.jpg|*.jpeg|*.png|*.gif)
                mv "$file" "$DIRECTORY/images"
                ;;
            *.mp4|*.mov|*.avi|*.mkv)
                mv "$file" "$DIRECTORY/videos"
                ;;
            *.pdf|*.doc|*.docx|*.xls|*.xlsx|*.ppt|*.pptx)
                mv "$file" "$DIRECTORY/documents"
                ;;
            *.zip|*.tar.gz|*.rar)
                mv "$file" "$DIRECTORY/archives"
                ;;
            *.deb|*.vsix)
                mv "$file" "$DIRECTORY/apps"
                ;;
            *.rpm|*.pkg)
                mv "$file" "$DIRECTORY/extensions"
                ;;
            *)
                mv "$file" "$DIRECTORY/others"
                ;;
        esac
    fi
done

echo "Files organized."
