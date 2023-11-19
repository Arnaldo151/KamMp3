#!/bin/bash
lineas="==================================="
red='\033[1;31m'
reset='\033[0m'

printf $red
printf "
╻┏┓╻┏━┓╺┳╸┏━┓╻  ╻   ┏━┓╻ ╻
┃┃┗┫┗━┓ ┃ ┣━┫┃  ┃   ┗━┓┣━┫
╹╹ ╹┗━┛ ╹ ╹ ╹┗━╸┗━╸╹┗━┛╹ ╹
"
printf $reset

# Determine the script directory
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$script_dir"

# Check if Termux is present
if command -v termux-info > /dev/null 2>&1; then
    pkg update -y
    pkg install -y ffmpeg
    pkg install -y python
    pip install yt-dlp
    chmod +x KanMp3
    printf $red
    echo $lineas
    echo "Instalación finalizada. Para iniciar la herramienta ejecuta ./KanMp3"
    printf $reset
else
    printf $red
    echo "Este script está diseñado para Termux. No se detectó Termux en el sistema."
    printf $reset
fi
