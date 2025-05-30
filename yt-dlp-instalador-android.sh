#!/data/data/com.termux/files/usr/bin/bash
pkg update -y && pkg upgrade -y
pkg install -y python ffmpeg
pip install -U yt-dlp

echo "yt-dlp instalado com sucesso!"
yt-dlp --version