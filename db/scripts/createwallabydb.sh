#!/bin/bash

RED="31"
GREEN="32"
YELLOW="33"
BOLDGREEN="\e[1;${GREEN}m"
BOLDYELLOW="\e[1;${YELLOW}m"
ITALICGREEN="\e[3;${GREEN}m"
ENDCOLOR="\e[0m"

echo -e "${BOLDYELLOW}Cloning WALLABY database repository${ENDCOLOR}"

sudo su - postgres -c "git clone https://github.com/AusSRC/WALLABY_database.git"

sudo su - postgres -c "cd WALLABY_database/;psql -U postgres -f src/01-users.sql"
sudo su - postgres -c "cd WALLABY_database/;psql -U postgres -f src/02-source-finding.sql"
sudo su - postgres -c "cd WALLABY_database/;psql -U postgres -f src/03-kinematics.sql"
sudo su - postgres -c "cd WALLABY_database/;psql -U postgres -f src/04-multi-wavelength.sql"
sudo su - postgres -c "cd WALLABY_database/;psql -U postgres -f src/05-privileges.sql"