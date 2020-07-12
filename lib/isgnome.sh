# Edson | Verifica se é ambiente gnome
isGnome() {
	pgrep -f "gnome-session" > /dev/null
	if [[ $? = 0 ]]; then
		return 0
	else
		return 1
	fi
}
