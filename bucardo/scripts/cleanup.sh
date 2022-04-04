#!/bin/bash
bucardo delete tables all --batch --quiet 
bucardo delete syncs wallabydb_aus_dbsync
bucardo delete syncs wallabydb_cirada_dbsync
bucardo delete relgroups aussrctables
bucardo delete relgroups ciradatables
bucardo delete database wallabydb_aussrc
bucardo delete database wallabydb_cirada
bucardo delete database wallabydb_spsrc
bucardo delete dbgroup dbs_aussrc
bucardo delete dbgroup dbs_cirada
bucardo purge all

## Show the status of the clean-up
echo -e "${BOLDGREEN} - - - Cleaning-up this Bucardo schema - - - ${ENDCOLOR}"
bucardo list all 



