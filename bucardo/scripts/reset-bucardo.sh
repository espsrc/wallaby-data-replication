
sudo su - postgres -c "psql -U postgres -c 'DROP DATABASE bucardo;'"
sudo su - postgres -c "psql -U postgres -c 'DROP OWNED by bucardo;'"
sudo su - postgres -c "psql -U postgres -c 'DROP ROLE bucardo;'"
rm $HOME/.pgpass

bucardo install





