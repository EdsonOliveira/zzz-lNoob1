# ELO | Zen mostra arquivo texto
# par : Titulo - Largura - Altura - Nome do arquivo
zenVeArq() {
	zenity --text-info --title="$1" --width="$2" --height="$3" --filename="$4" 
}
