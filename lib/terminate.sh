# Edson | Finaliza o lNoob
# none -> none
# Variáveis usadas: GETOPT_MSG_TITLE ENDMSG_MSG_TEXT
terminate() {
	echo "[$FUNCNAME]"
	echo
	# End program message
	zenVeInfo "$GETOPT_MSG_TITLE" "250" "250" "$ENDMSG_MSG_TEXT"
	termMsgOk "Terminating program..."	
	exit
}
