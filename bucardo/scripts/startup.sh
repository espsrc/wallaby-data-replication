#!/bin/bash 

RED="31"
GREEN="32"
YELLOW="33"
BOLDGREEN="\e[1;${GREEN}m"
BOLDYELLOW="\e[1;${YELLOW}m"
ITALICGREEN="\e[3;${GREEN}m"
ENDCOLOR="\e[0m"

echo -e "${BOLDGREEN}Starting a new Bucardo schema${ENDCOLOR}"

bucardo add db wallabydb_spsrc dbname=wallabydb user=bucardo port=18020
bucardo add db wallabydb_aussrc dbname=wallabydb user=bucardo host=146.118.67.204
bucardo add db wallabydb_cirada dbname=wallabydb user=bucardo host=206.12.93.99

bucardo add relgroup aussrctables         \
                wallaby.comment           \
                wallaby.detection         \
                wallaby.instance          \
                wallaby.product           \
                wallaby.run               \
                wallaby.run_metadata      \
                wallaby.source            \
                wallaby.source_detection  \
                wallaby.tag               \
                wallaby.tag_detection     \
                wallaby.tag_source_detection

bucardo add relgroup ciradatables wallaby.kinematic_model

bucardo add sequence wallaby.comment_id_seq  \
                     wallaby.detection_id_seq  \
                     wallaby.instance_id_seq  \
                     wallaby.observation_id_seq  \
                     wallaby.product_id_seq  \
                     wallaby.run_id_seq  \
                     wallaby.run_metadata_id_seq \
                     wallaby.source_detection_id_seq \
                     wallaby.source_id_seq \
                     wallaby.tag_detection_id_seq \
                     wallaby.tag_id_seq \
                     wallaby.kinematic_model_id_seq \
                     wallaby.tag_source_detection_id_seq \
                     db=wallabydb_aussrc relgroup=aussrctables

#bucardo add sequence wallaby.kinematic_model_id_seq \
#                     db=wallabydb_cirada relgroup=ciradatables

bucardo add dbgroup dbs_aussrc wallabydb_aussrc:source wallabydb_spsrc:target
bucardo add dbgroup dbs_cirada wallabydb_cirada:source wallabydb_spsrc:target

bucardo add sync wallabydb_aus_dbsync relgroup=aussrctables dbgroup=dbs_aussrc
bucardo add sync wallabydb_cirada_dbsync relgroup=ciradatables dbgroup=dbs_cirada
echo -e "${BOLDGREEN}Created a new Bucardo schema, showing the status of bucardo:${ENDCOLOR}"
## Show the status of the start-up

bucardo list all