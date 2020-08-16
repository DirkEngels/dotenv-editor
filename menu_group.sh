#!/bin/bash

source .env

DIALOG=${DIALOG=dialog}

# Loop over all variables with the existing defaults.
VARIABLE_LIST=`awk -F= '{print $1 }' .env  | grep -v '^#' | grep -v '^$'`
VARIABLE_GROUP=`awk -F= '{print $1 }' .env  | grep -v '^#' | grep -v '^$' | awk -F"_" '{print $1}' | sort | uniq`
# VARIABLE_GROUPS=`echo $VARIABLE_LIST | awk -F"_" '{print $1}'`

MENU_LIST=""
for i in $VARIABLE_LIST; do
	PREFIX=`echo $i | awk -F"_" '{print $1}'`
	REST=`echo $i | awk -F"_" '{print $2}'`

    VALUE=`./bin/dotenv.sh get $i`
    MENU_LIST="$MENU_LIST $i \"$VALUE\" "
    # echo "- $i => $VALUE"
    #$DIALOG --clear --title "Configuration - $i" --inputbox "$i" 8 80 "`./bin/dotenv.sh get $i`"
done


echo $MENU_LIST

# $DIALOG
#     --menu "You can use the UP/DOWN arrow keys, the first \n \
#     --clear \
#     --title "[ M A I N - M E N U ]" \
#     letter of the choice as a hot key, or the \n\
#     number keys 1-9 to choose an option.\n\
#     Choose the TASK" 20 60 14 \
    # $MENU_LIST 
# BIER "echo BIER" \
# Main "Main MENU" \
# Sub "Sub MENU" \
# Date/time "Displays date and time" \
# Calendar "Displays a calendar" \
# Editor "Start a text editor" \
	# Exit "Exit to the shell" 2>"${INPUT}"


# Success screen
#$DIALOG --title "Finished" --clear \
#	--yesno "$APP_TITLE\n\nThe application settings have been configured to your needs. The next step is to run:\n\n  make start\n\nTo start the docker container(s)." 20 80

