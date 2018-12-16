#!/bin/bash

# $1 - network name
function create_network {
    local name=$1

echo "Create network $name"
if ~/yandex-cloud/bin/yc vpc network get ${name} > /dev/null 2>&1; then
    echo "Network already exists. Skipping."
else
    ~/yandex-cloud/bin/yc vpc network create --name ${name}
fi
}

# $1 - subnet name
# $2 - network name
# $3 - zone
# $4 - subnet ip range
function create_subnet {
    local name=$1
    local network=$2
    local zone=$3
    local range=$4

echo "Create subnet $name"
if ~/yandex-cloud/bin/yc vpc subnet get ${name} > /dev/null 2>&1; then
    echo "Subnet already exists. Skipping."
else
    ~/yandex-cloud/bin/yc vpc subnet create --name ${name} \
      --network-name ${network} \
      --zone ${zone} \
      --range ${range}
fi
}

create_network kube-net

create_subnet kube-subnet-a kube-net ru-central1-a 192.168.10.0/24
create_subnet kube-subnet-b kube-net ru-central1-b 192.168.20.0/24
create_subnet kube-subnet-c kube-net ru-central1-c 192.168.30.0/24
