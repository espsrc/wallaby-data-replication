#!/bin/bash

RED="31"
GREEN="32"
YELLOW="33"
BOLDGREEN="\e[1;${GREEN}m"
BOLDYELLOW="\e[1;${YELLOW}m"
ITALICGREEN="\e[3;${GREEN}m"
ENDCOLOR="\e[0m"

echo -e "${BOLDGREEN}Cleaning-up this Bucardo schema${ENDCOLOR}"

bucardo delete tables all --batch --quiet 
bucardo delete sequences all --batch --quiet
bucardo delete syncs wallabydb_aus_dbsync
bucardo delete syncs wallabydb_cirada_dbsync
bucardo delete syncs wallabydb_sequences_aussrc
bucardo delete syncs wallabydb_sequences_cirada
bucardo delete relgroups seq_aussrc
bucardo delete relgroups seq_cirada
bucardo delete relgroups seq_ciradac
bucardo delete relgroups aussrctables
bucardo delete relgroups ciradatables
bucardo delete database wallabydb_aussrc
bucardo delete database wallabydb_cirada
bucardo delete database wallabydb_spsrc
bucardo delete dbgroup dbs_aussrc
bucardo delete dbgroup dbs_cirada
bucardo purge all
echo -e "${BOLDGREEN}Cleaning-up finished, showing the status of Bucardo:${ENDCOLOR}"

## Show the status of the clean-up
bucardo list all 



