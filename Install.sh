clear
lineas="==================================="
red='\033[1;31m'                                        
green='\033[1;32m'
yellow='\033[1;33m'                                   
blue='\033[1;34m'                                       
magenta='\033[1;35m'                                    
cyan='\033[1;36m'
reset='\033[0m'
printf $red

echo "
╻┏┓╻┏━┓╺┳╸┏━┓╻  ╻   ┏━┓╻ ╻
┃┃┗┫┗━┓ ┃ ┣━┫┃  ┃   ┗━┓┣━┫
╹╹ ╹┗━┛ ╹ ╹ ╹┗━╸┗━╸╹┗━┛╹ ╹

		printf $green
		echo $lineas
		pkg update -y
		apt update -y
		apt install ffmpeg
		apt install python
		pip install yt-dlp
		chmod +x KanMp3
		echo "Instalación finalizada. Para iniciar la herramienta ejecuta ./KanMp3"
		printf $reset

 "Instalación finalizada. Para iniciar la herramienta ejecuta ./KanMp3"
		printf $reset
	;;
	[3]|*)
		printf $blue
		echo $lineas
		echo "              Bye"
		echo $lineas
esac
