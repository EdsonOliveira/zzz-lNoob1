zenityOn() {

zzzTemp="zenity"
set -ef
ALLMATCHES=0
ALLRET=0
for PROGRAM in "$zzzTemp"; do
 RET=1
 IFS_SAVE="$IFS"
 IFS=:
 case $PROGRAM in
  *)
   for ELEMENT in $PATH; do
    if [ -z "$ELEMENT" ]; then
     ELEMENT=.
    fi
    if [ -f "$ELEMENT/$PROGRAM" ] && [ -x "$ELEMENT/$PROGRAM" ]; then
     zzzFileL="$PROGRAM"
     RET=0
     [ "$ALLMATCHES" -eq 1 ] || break
    fi
   done
   ;;
 esac
done
if [ $zzzFile eq $zzzFile1 ]; then
    zenityOK=1
else
    zenityOK=0
fi



# if [ $zzzFile eq $zzzFile1 ];
# then
# echo "o que = $zzzFile para qual = $zzzFile1"
# 		echo -e "\nInstalling zenity...\n"
# 		#	sudo apt install -y zenity
# 		#	if [[ "$?" != 0 ]]; then
# 		#		ErrMsg "Could not install zenity"
# 		#		return 1
# 		#	elif [[ "$?" == 0 ]]; then
# 		# fi
#  else
# 	OkMsg "zenity installed"
# 	return 0
# fi

}
zenityOn
echo $zenityOK