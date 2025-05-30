#!/bin/bash
set -e

echo "atualizando pacotes..."
sudo apt update && sudo apt install -y curl ffmpeg python3-pip

echo "instalando yt-dlp..."
pip3 install -U yt-dlp

echo "yt-dlp instalado com sucesso!"
yt-dlp --version
