# Edson | Número randomico entre 0 e o parâmetro
nRandom() {
	RNUMBER=$[ $RANDOM % $1 ]
	return $RNUMBER
}

