#!/bin/bash

source ../source/shell.sh


echo -e "${BOLDGREEN}${ENDCOLOR}"
echo -e "${BOLDGREEN}----------------${ENDCOLOR}"
echo -e "${BOLDGREEN}Stopping Bucardo${ENDCOLOR}"
echo -e "${BOLDGREEN}----------------${ENDCOLOR}"
echo -e "${BOLDGREEN}${ENDCOLOR}"

bucardo stop

echo -e "${BOLDGREEN}${ENDCOLOR}"
echo -e "${BOLDGREEN}------------------------------------${ENDCOLOR}"
echo -e "${BOLDGREEN}Cleaning and starting Bucardo Schema${ENDCOLOR}"
echo -e "${BOLDGREEN}------------------------------------${ENDCOLOR}"
echo -e "${BOLDGREEN}${ENDCOLOR}"

bash wallaby-data-replication/bucardo/scripts/cleanup.sh
bash wallaby-data-replication/bucardo/scripts/startup.sh

echo -e "${BOLDGREEN}${ENDCOLOR}"
echo -e "${BOLDGREEN}------------------------------${ENDCOLOR}"
echo -e "${BOLDGREEN}Showing created Bucardo Schema${ENDCOLOR}"
echo -e "${BOLDGREEN}------------------------------${ENDCOLOR}"
echo -e "${BOLDGREEN}${ENDCOLOR}"

bucardo list all

echo -e "${BOLDGREEN}${ENDCOLOR}"
echo -e "${BOLDGREEN}---------------------${ENDCOLOR}"
echo -e "${BOLDGREEN}Starting Bucardo Sync${ENDCOLOR}"
echo -e "${BOLDGREEN}---------------------${ENDCOLOR}"
echo -e "${BOLDGREEN}${ENDCOLOR}"

bucardo start

