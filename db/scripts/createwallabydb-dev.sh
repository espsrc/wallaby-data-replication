#!/bin/bash
source ../source/shell.sh

echo -e "${BOLDYELLOW}Cloning WALLABY database repository${ENDCOLOR}"
sudo su - postgres -c "rm -rf WALLABY_database"
sudo su - postgres -c "git clone https://github.com/manuparra/WALLABY_database.git"

echo -e "${BOLDGREEN}Creating users${ENDCOLOR}"
sudo su - postgres -c "cd WALLABY_database/;psql -U postgres -f src/01-users.sql"
echo -e "${BOLDGREEN}Creating tables for source finding${ENDCOLOR}"
sudo su - postgres -c "cd WALLABY_database/;psql -U postgres -f src/02-source-finding.sql"
echo -e "${BOLDGREEN}Creating tables for kinametics${ENDCOLOR}"
sudo su - postgres -c "cd WALLABY_database/;psql -U postgres -f src/03-kinematics.sql"
echo -e "${BOLDGREEN}Creating tables for multi-wavelength${ENDCOLOR}"
sudo su - postgres -c "cd WALLABY_database/;psql -U postgres -f src/04-multi-wavelength.sql"
echo -e "${BOLDGREEN}Creating tables for privileges${ENDCOLOR}"
sudo su - postgres -c "cd WALLABY_database/;psql -U postgres -f src/05-privileges.sql"