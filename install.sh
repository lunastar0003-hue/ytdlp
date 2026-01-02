#!/bin/bash

# Installation script for ytdlp environment
# Run this once when your Codespace starts: bash install.sh

echo "Installing aria2, ffmpeg, and yt-dlp..."
echo "========================================"

# Update package list
sudo apt-get update

# Install aria2 and ffmpeg
echo "Installing aria2 and ffmpeg..."
sudo apt-get install -y aria2 ffmpeg

# Install yt-dlp
echo "Installing yt-dlp..."
pip install -U yt-dlp

echo ""
echo "✓ Installation complete!"
echo ""
echo "Installed tools:"
echo "  - aria2c: $(aria2c --version | head -n1)"
echo "  - ffmpeg: $(ffmpeg -version | head -n1)"
echo "  - yt-dlp: $(yt-dlp --version)"