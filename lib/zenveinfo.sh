#  ELO | Zen mostra mensagem texto
#  par : titulo - largura - altura - mensagem
zenVeInfo() {
	zenity --info --title="$1" --width="$2" --height="$3" --text="$4" 
}

