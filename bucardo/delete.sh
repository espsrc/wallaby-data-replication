#!/bin/bash
source ../source/shell.sh

echo -e "${BOLDGREEN}${ENDCOLOR}"
echo -e "${BOLDGREEN}-----------------------${ENDCOLOR}"
echo -e "${BOLDGREEN}Cleaning Bucardo Schema${ENDCOLOR}"
echo -e "${BOLDGREEN}-----------------------${ENDCOLOR}"
echo -e "${BOLDGREEN}${ENDCOLOR}"

bash wallaby-data-replication/bucardo/scripts/cleanup.sh
