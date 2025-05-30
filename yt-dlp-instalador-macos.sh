#!/bin/bash
set -e

echo "verificando homebrew..."
which brew >/dev/null 2>&1 || {
    echo "instalando homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

echo "instalando ffmpeg e yt-dlp via homebrew..."
brew install ffmpeg yt-dlp

echo "yt-dlp instalado com sucesso!"
yt-dlp --version
