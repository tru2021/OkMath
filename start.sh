#!/bin/bash
# mkdir ~/.screen && chmod 777 ~/.screen
chmod -Rf 777 /run/screen
# export SCREENDIR=$HOME/.screen
/usr/bin/ttyd -p 80 -c admin:adminks123 bash

while true
do
    sleep 5
done
