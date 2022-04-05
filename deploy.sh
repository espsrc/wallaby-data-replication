#!/bin/bash

RED="31"
GREEN="32"
YELLOW="33"
BOLDGREEN="\e[1;${GREEN}m"
BOLDYELLOW="\e[1;${YELLOW}m"
ITALICGREEN="\e[3;${GREEN}m"
ENDCOLOR="\e[0m"

cd $HOME/bucardo/

# Creating (wipe-out db and re-create db) WALLABYDB
echo -e "${BOLDGREEN}Creating DB${ENDCOLOR}"
echo -e "${BOLDGREEN}-------------------------------------------${ENDCOLOR}"
bash db/create.sh
echo -e "${BOLDGREEN}Creating BUCARDO SYNC${ENDCOLOR}"
echo -e "${BOLDGREEN}-------------------------------------------${ENDCOLOR}"
bash bucardo/delete.sh
bash bucardo/create.sh


