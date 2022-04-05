#!/bin/bash

RED="31"
GREEN="32"
YELLOW="33"
BOLDGREEN="\e[1;${GREEN}m"
BOLDYELLOW="\e[1;${YELLOW}m"
ITALICGREEN="\e[3;${GREEN}m"
ENDCOLOR="\e[0m"

cd $HOME/bucardo/
echo -e "${BOLDYELLOW}Clean-up latest version of the WALLABY database${ENDCOLOR}"
bash wallaby-data-replication/db/scripts/cleanup.sh
sleep 2
echo -e "${BOLDYELLOW}Create latest version of the WALLABY database${ENDCOLOR}"
bash wallaby-data-replication/db/scripts/createwallabydb-dev.sh
