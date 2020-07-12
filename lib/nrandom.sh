# Edson | Número randomico entre 0 e o parâmetro
# num.max -> nRandom
nRandom() {
	RNUMBER=$[ $RANDOM % $1 ]
	return $RNUMBER
}

