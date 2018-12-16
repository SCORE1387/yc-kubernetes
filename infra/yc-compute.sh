#!/bin/bash

# $1 - vm name
# $2 - zone
# $3 - subnet name
# $4 - ip address
function deploy_access_vm {
    local name=$1
    local zone=$2
    local subnet=$3
    local ip=$4
    
echo "Start Access VM deployment."
if ~/yandex-cloud/bin/yc compute instance get ${name} > /dev/null 2>&1; then
    echo "VM already exists. Skipping."
else
    ~/yandex-cloud/bin/yc compute instance create \
        --name ${name} \
        --hostname ${name} \
        --zone ${zone} \
        --memory 1 \
        --cores 1 \
        --core-fraction 5 \
        --network-interface subnet-name=${subnet},address=${ip},nat-ip-version=ipv4  \
        --create-boot-disk image-folder-id=standard-images,image-name=ubuntu-1604-lts-1539450374,size=20 \
        --ssh-key ./infra/id_rsa.pub
fi
}

# $1 - vm name
# $2 - zone
# $3 - subnet name
# $4 - ip address
function deploy_master {
    local name=$1
    local zone=$2
    local subnet=$3
    local ip=$4
    
echo "Start Master ${name} VM deployment."
if ~/yandex-cloud/bin/yc compute instance get ${name} > /dev/null 2>&1; then
    echo "VM already exists. Skipping."
else
    ~/yandex-cloud/bin/yc compute instance create \
        --name ${name} \
        --hostname ${name} \
        --zone ${zone} \
        --memory 2 \
        --cores 2 \
        --network-interface subnet-name=${subnet},address=${ip},nat-ip-version=ipv4 \
        --create-boot-disk image-folder-id=standard-images,image-name=ubuntu-1604-lts-1539450374,size=20 \
        --ssh-key ./infra/id_rsa.pub
fi
}

# $1 - vm name
# $2 - zone
# $3 - subnet name
# $4 - ip address
function deploy_node {
    local name=$1
    local zone=$2
    local subnet=$3
    local ip=$4
    
echo "Start Node ${name} VM deployment."
if ~/yandex-cloud/bin/yc compute instance get ${name} > /dev/null 2>&1; then
    echo "VM already exists. Skipping."
else
    ~/yandex-cloud/bin/yc compute instance create \
        --name ${name} \
        --hostname ${name} \
        --zone ${zone} \
        --memory 2 \
        --cores 1 \
        --network-interface subnet-name=${subnet},address=${ip},nat-ip-version=ipv4 \
        --create-boot-disk image-folder-id=standard-images,image-name=ubuntu-1604-lts-1539450374,size=20 \
        --ssh-key ./infra/id_rsa.pub
fi
}

deploy_master master01 ru-central1-a kube-subnet-a 192.168.10.3 
deploy_master master02 ru-central1-b kube-subnet-b 192.168.20.3 
deploy_master master03 ru-central1-c kube-subnet-c 192.168.30.3 

deploy_node node01 ru-central1-a kube-subnet-a 192.168.10.10
deploy_node node02 ru-central1-b kube-subnet-b 192.168.20.10
deploy_node node03 ru-central1-c kube-subnet-c 192.168.30.10 

deploy_access_vm access ru-central1-a kube-subnet-a 192.168.10.100
