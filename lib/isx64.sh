# Edson | Verifica se é 64 bits
isX64() {
	if [[ "$(uname -m)" == "x86_64" ]]; then
		return 0
	fi
	return 1
}

