#!/bin/bash

source .env

#DIALOG=${DIALOG=whiptail}
DIALOG=${DIALOG=dialog}

# Intro screen
$DIALOG --clear \
	--title "Setup" --clear \
        --yesno "$APP_TITLE\n\nThis setup will guide you through configuring all the existing variables.\n\nTheir defaults are already prefilled, so hit ENTER to go the next one." 20 80


# utilitymenu.sh - A sample shell script to display menus on screen
# Store menu options selected by the user
INPUT=/tmp/menu.sh.$$

# Storage file for displaying cal and date command output
OUTPUT=/tmp/output.sh.$$

# get text editor or fall back to vi_editor
vi_editor=${EDITOR-vi}

# trap and delete temp files
trap "rm $OUTPUT; rm $INPUT; exit" SIGHUP SIGINT SIGTERM

#
# Purpose - display output using msgbox 
#  $1 -> set msgbox height
#  $2 -> set msgbox width
#  $3 -> set msgbox title
#
function display_output(){
	local h=${1-10}			# box height default 10
	local w=${2-41} 		# box width default 41
	local t=${3-Output} 	# box title 
	$DIALOG --backtitle "Linux Shell Script Tutorial" --title "${t}" --clear --msgbox "$(<$OUTPUT)" ${h} ${w}
}


#
# Purpose - display current system date & time
#
function show_date(){
	echo "Today is $(date) @ $(hostname -f)." >$OUTPUT
    display_output 6 60 "Date and Time"
}
#
# Purpose - display a calendar
#
function show_calendar(){
	cal >$OUTPUT
	display_output 13 25 "Calendar"
}

function menu_main() {
    # Loop over all variables with the existing defaults.
    VARIABLE_LIST=`awk -F= '{print $1 }' .env  | grep -v '^#' | grep -v '^$'`
    for i in $VARIABLE_LIST; do
        VALUE=`./bin/dotenv.sh get $i`
        $DIALOG --clear --title "Configuration - $i" --inputbox "$i" 8 80 "`./bin/dotenv.sh get $i`"
    done

    # Success screen
    $DIALOG --title "Finished" --clear \
            --yesno "$APP_TITLE\n\nThe application settings have been configured to your needs. The next step is to run:\n\n  make start\n\nTo start the docker container(s)." 20 80
}


function menu_sub() {
    # Loop over all variables with the existing defaults.
    VARIABLE_LIST=`awk -F= '{print $1 }' .env  | grep -v '^#' | grep -v '^$'`
    for i in $VARIABLE_LIST; do
        VALUE=`./bin/dotenv.sh get $i`
        $DIALOG --clear --title "Configuration - $i" --inputbox "$i" 8 80 "`./bin/dotenv.sh get $i`"
    done

    # Success screen
    $DIALOG --title "Finished" --clear \
            --yesno "$APP_TITLE\n\nThe application settings have been configured to your needs. The next step is to run:\n\n  make start\n\nTo start the docker container(s)." 20 80
}


#
# set infinite loop
#
while true
do

### display main menu ###
$DIALOG --clear  --help-button --backtitle "Linux Shell Script Tutorial" \
    --title "[ M A I N - M E N U ]" \
    --menu "You can use the UP/DOWN arrow keys, the first \n\
    letter of the choice as a hot key, or the \n\
    number keys 1-9 to choose an option.\n\
    Choose the TASK" 20 60 14 \
BIER "echo BIER" \
Main "Main MENU" \
Sub "Sub MENU" \
Date/time "Displays date and time" \
Calendar "Displays a calendar" \
Editor "Start a text editor" \
Exit "Exit to the shell" 2>"${INPUT}"

menuitem=$(<"${INPUT}")


# make decsion 
case $menuitem in
	Date/time) show_date;;
	Calendar) show_calendar;;
	Main) menu_main;;
	Sub) menu_sub;;
	Editor) $vi_editor;;
	BIER) echo "BIER!!!!"; sleep 1;;
	Exit) echo "Bye"; clear; break;;
esac

done

# if temp files found, delete em
[ -f $OUTPUT ] && rm $OUTPUT
[ -f $INPUT ] && rm $INPUT

