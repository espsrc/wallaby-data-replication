cd $HOME/bucardo/
echo "\n--- Clean-up latest version of the Bucardo replication data scheme ---\n\n"
bash wallaby-data-replication/bucardo/scripts/cleanup.sh
echo "\n--- Starting up latest version of the Bucardo replication data scheme ---\n\n"
bash wallaby-data-replication/bucardo/scripts/startup.sh
bucardo restart