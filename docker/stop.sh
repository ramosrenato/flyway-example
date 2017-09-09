#!/usr/bin/env bash

#container_id=$( docker ps -aqf "name=database.dev" )
#docker exec ${container_id} /tmp/shutdown.sh
#sleep 5

docker-compose -f docker-compose.yml down

echo
echo -n "Waiting container stop ... "
sleep 10
echo -n "done"
echo
echo "MySQL server down!"
echo