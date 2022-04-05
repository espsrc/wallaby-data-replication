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
if [ $1 == "--dev" ]; then bash wallaby-data-replication/db/create-dev.sh; fi
if [ $1 == "" ]; then      bash wallaby-data-replication/db/create.sh; fi
sleep 2
echo -e "${BOLDGREEN}Creating BUCARDO SYNC${ENDCOLOR}"
echo -e "${BOLDGREEN}-------------------------------------------${ENDCOLOR}"
bash wallaby-data-replication/bucardo/delete.sh
bash wallaby-data-replication/bucardo/create.sh


