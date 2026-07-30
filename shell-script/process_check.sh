#!/bin/bash
echo "enter the process name: "
read PROCESS
if pgrep $PROCESS > /dev/null

then

echo "$PROCESS running"

else

echo "$PROCESS stopped"

fi