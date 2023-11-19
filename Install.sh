#!/bin/bash
lineas="==================================="
red='\033[1;31m'
green='\033[1;32m'
cyan='\033[1;36m'
reset='\033[0m'

printf $red
printf "
╻┏┓╻┏━┓╺┳╸┏━┓╻  ╻   ┏━┓╻ ╻
┃┃┗┫┗━┓ ┃ ┣━┫┃  ┃   ┗━┓┣━┫
╹╹ ╹┗━┛ ╹ ╹ ╹┗━╸┗━╸╹┗━┛╹ ╹
"
printf $reset

# Detect if Termux is present
if command -v termux-info > /dev/null 2>&1; then
    os="termux"
else
    os="ubuntu"
fi

case $os in
    termux)
        pkg update -y
        pkg install -y ffmpeg
        pkg install -y python
        pip install yt-dlp
        chmod +x KanMp3
        printf $green
        echo $lineas
        echo "Instalación finalizada. Para iniciar la herramienta ejecuta ./KanMp3"
        printf $reset
        ;;
    ubuntu)
        sudo apt update -y
        sudo apt install -y ffmpeg
        sudo apt install -y yt-dlp
        chmod +x KanMp3
        printf $cyan
        echo $lineas
        echo "Instalación finalizada. Para iniciar la herramienta ejecuta ./KanMp3"
        printf $reset
        ;;
esac
