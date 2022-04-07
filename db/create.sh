#!/bin/bash

bash wallaby-data-replication/db/scripts/cleanup.sh
sleep 2
bash wallaby-data-replication/db/scripts/createwallabydb.sh
