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


