# ELO | Zenity msg de erro
# par : titulo - texto
zemMsgError() {
	zenity --error --window-icon="$logoPNG" --title="$1" --text="$2"
}
