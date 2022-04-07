#!/bin/bash
source ../source/shell.sh

echo -e "${BOLDGREEN}${ENDCOLOR}"
echo -e "${BOLDGREEN}----------------------------${ENDCOLOR}"
echo -e "${BOLDGREEN}Creating PostgreSQL DataBase${ENDCOLOR}"
echo -e "${BOLDGREEN}----------------------------${ENDCOLOR}"
echo -e "${BOLDGREEN}${ENDCOLOR}"

# Using dev from a repository forked with corrections applied
if [ $1 == "--dev" ]; then bash wallaby-data-replication/db/create-dev.sh; fi
if [ $1 == "" ]; then      bash wallaby-data-replication/db/create.sh; fi

sleep 4

# Cleaning and Starting Bucardo Schema
bash wallaby-data-replication/bucardo/delete.sh
bash wallaby-data-replication/bucardo/create.sh


