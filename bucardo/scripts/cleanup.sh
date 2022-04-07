#!/bin/bash

source ../../source/shell.sh

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



