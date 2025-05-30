# baixar yt-dlp e ffmpeg no windows
$ErrorActionPreference = "Stop"

$ytDlpUrl = "https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp.exe"
$ffmpegUrl = "https://www.gyan.dev/ffmpeg/builds/ffmpeg-release-essentials.zip"

$dest = "$PSScriptRoot\yt-dlp"
New-Item -ItemType Directory -Force -Path $dest

Invoke-WebRequest $ytDlpUrl -OutFile "$dest\yt-dlp.exe"
Invoke-WebRequest $ffmpegUrl -OutFile "$dest\ffmpeg.zip"

Expand-Archive "$dest\ffmpeg.zip" -DestinationPath $dest
Remove-Item "$dest\ffmpeg.zip"

# adicionar yt-dlp ao patch temporariamente para a sessão atual
$env:Path += ";$dest"

Write-Host "yt-dlp instalado! para usar, execute:"
Write-Host "$dest\yt-dlp.exe <URL>"
