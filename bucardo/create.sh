#!/bin/bash

RED="31"
GREEN="32"
YELLOW="33"
BOLDGREEN="\e[1;${GREEN}m"
BOLDYELLOW="\e[1;${YELLOW}m"
ITALICGREEN="\e[3;${GREEN}m"
ENDCOLOR="\e[0m"

cd $HOME/bucardo/
bucardo stop
echo -e "${BOLDGREEN}Clean-up latest version of the Bucardo replication data scheme${ENDCOLOR}"
bash wallaby-data-replication/bucardo/scripts/cleanup.sh
echo -e "${BOLDGREEN}Starting up latest version of the Bucardo replication data scheme${ENDCOLOR}"
bash wallaby-data-replication/bucardo/scripts/startup.sh
bucardo update sync wallabydb_aus_dbsync onetimecopy=2
bucardo update sync wallabydb_cirada_dbsync onetimecopy=2
bucardo start