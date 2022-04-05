#!/bin/bash

RED="31"
GREEN="32"
YELLOW="33"
BOLDGREEN="\e[1;${GREEN}m"
BOLDYELLOW="\e[1;${YELLOW}m"
ITALICGREEN="\e[3;${GREEN}m"
ENDCOLOR="\e[0m"

echo -e "${BOLDYELLOW}Removing connections to the database${ENDCOLOR}"
sudo su - postgres -c "psql -U postgres -c 'SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE pid <> pg_backend_pid() AND datname=\'wallabydb\';'"
echo -e "${BOLDYELLOW}Removing database wallabydb${ENDCOLOR}"
sudo su - postgres -c "psql -U postgres -c 'DROP DATABASE wallabydb;'"
