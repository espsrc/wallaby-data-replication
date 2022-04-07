#!/bin/bash
source ../source/shell.sh

echo -e "${BOLDYELLOW}Dropping connections to the database${ENDCOLOR}"
sudo su - postgres -c "psql -U postgres -c 'SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE pid <> pg_backend_pid() AND datname='\''wallabydb'\'';'"
echo -e "${BOLDYELLOW}Removing database wallabydb${ENDCOLOR}"
sudo su - postgres -c "psql -U postgres -c 'DROP SCHEMA wallaby CASCADE;'"
sudo su - postgres -c "psql -U postgres -c 'DROP DATABASE wallabydb;'"
echo -e "${BOLDYELLOW}Removing users${ENDCOLOR}"
sudo su - postgres -c "cd WALLABY_database/;psql -U postgres -c 'DROP OWNED by admin;DROP USER admin'"
sudo su - postgres -c "cd WALLABY_database/;psql -U postgres -c 'DROP OWNED by wallaby_user;DROP USER wallaby_user'"
sudo su - postgres -c "cd WALLABY_database/;psql -U postgres -c 'DROP OWNED by gavo;DROP USER gavo'"
sudo su - postgres -c "cd WALLABY_database/;psql -U postgres -c 'DROP OWNED by gavoadmin;DROP USER gavoadmin'"
sudo su - postgres -c "cd WALLABY_database/;psql -U postgres -c 'DROP OWNED by untrusted;DROP USER untrusted'"


