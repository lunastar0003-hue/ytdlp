#!/bin/bash

# Installation script for ytdlp environment
# Run this once when your Codespace starts: bash install.sh

echo "Installing tools..."
echo "========================================"

# Update package list
sudo apt-get update

# Install aria2, ffmpeg, and fuse3
echo "Installing aria2, ffmpeg, and fuse3..."
sudo apt-get install -y aria2 ffmpeg fuse3

# Install yt-dlp
echo "Installing yt-dlp..."
pip install -U yt-dlp

# Install Filen CLI
echo "Installing Filen CLI..."
npm install -g @filen/cli

# Install OpenCode
echo "Installing OpenCode..."
curl -fsSL https://opencode.ai/install | bash

# Install Amp Code
echo "Installing Amp Code..."
curl -fsSL https://ampcode.com/install.sh | bash

echo ""
echo "✓ Installation complete!"
echo ""
echo "Installed tools:"
echo "  - aria2c: $(aria2c --version | head -n1)"
echo "  - ffmpeg: $(ffmpeg -version | head -n1)"
echo "  - fuse3: $(fusermount3 --version 2>&1 | head -n1)"
echo "  - yt-dlp: $(yt-dlp --version)"
echo "  - filen: $(filen version 2>&1 || echo 'installed')"
echo "  - opencode: $(opencode --version 2>&1 || echo 'installed (restart shell to use)')"
echo "  - amp: $(amp --version 2>&1 || echo 'installed (restart shell to use)')"
echo ""
echo "Note: You may need to restart your shell or run 'source ~/.bashrc' to use opencode and amp"