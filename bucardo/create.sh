cd $HOME/bucardo/
echo "--- Clean-up latest version of the Bucardo replication data scheme ---"
bash wallaby-data-replication/bucardo/scripts/cleanup.sh
echo "--- Starting up latest version of the Bucardo replication data scheme ---"
bash wallaby-data-replication/bucardo/scripts/startup.sh
bucardo restart