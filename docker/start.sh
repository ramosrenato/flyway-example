#!/usr/bin/env bash

app_name="mysql-server"
app_host="mysql-1"
app_port=3306

echo
echo -n "Check if exists docker images ... "

container_name=mysql/mysql-server
container_version=5.7

IMAGE=$( docker images | grep "${container_name}" | grep "${container_version} " |  awk '{print $3}')
if [[ -z ${IMAGE} ]]; then
    docker pull ${container_name}:${container_version}
    rc=$?
    if [[ ${rc} != 0 ]]
    then
        echo "${container_name}:${container_version} image not found..."
        exit ${rc}
    fi
fi

echo -n "done"
echo

network_name="${app_name//-}_default"
network=$(docker network ls | grep "${network_name}" |  awk '{print $1}')
if [[ -z ${network} ]]; then
    docker network create ${network_name}
    rc=$?
    if [[ ${rc} != 0 ]]
    then
        echo "unable to create network ${network_name}"
        exit ${rc}
    fi
fi

echo "Waiting for container startup ... "
echo

docker-compose -f docker-compose.yml create
sleep 2
docker-compose -f docker-compose.yml start

echo
echo "Starting container: ${app_name}_${app_host} (localhost) on port: ${app_port} ..."
sleep 10
echo
echo "MySQL server running!"
