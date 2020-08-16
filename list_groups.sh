#!/bin/bash

source .env

DIALOG=${DIALOG=dialog}

# Loop over all variables with the existing defaults.
VARIABLE_LIST=`awk -F= '{print $1 }' .env  | grep -v '^#' | grep -v '^$'`
VARIABLE_GROUP=`awk -F= '{print $1 }' .env  | grep -v '^#' | grep -v '^$' | awk -F"_" '{print $1}' | sort | uniq`
# VARIABLE_GROUPS=`echo $VARIABLE_LIST | awk -F"_" '{print $1}'`


MENU_LIST=""
echo $VARIABLE_GROUP
for i in $VARIABLE_GROUP; do
	MENU_LIST="$MENU_LIST $i SomeValue "
done
echo $MENU_LIST

