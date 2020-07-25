# lNoob function test to app zenity
#
# if not, install ou print message error ( with return = 0)
# return [ zenityOK ] = 0 . not installed   = 1 . installed

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
 #	termMsgOk "zenity installed"
 	return 0
else
    zenityOK=0
 	echo -e "\nInstalling zenity...\n"
 	sudo apt install -y zenity
	if [[ "$?" != 0 ]]; then
		ErrMsg "Could not install zenity"
		return 1
    else
     	termMsgOk "zenity installed"
        return 0
    fi
fi

}
