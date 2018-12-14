#!/bin/bash

# master01
~/yandex-cloud/bin/yc compute instance create \
    --name master01 \
    --hostname master01 \
    --zone ru-central1-a \
    --memory 2 \
    --cores 2 \
    --network-interface subnet-name=kube-subnet-a,address=192.168.10.3 \
    --create-boot-disk image-folder-id=standard-images,image-name=ubuntu-1604-lts-1539450374,size=20 \
    --ssh-key ./ci/id_rsa.pub
	
# master02
~/yandex-cloud/bin/yc compute instance create \
    --name master02 \
    --hostname master02 \
    --zone ru-central1-b \
    --memory 2 \
    --cores 2 \
    --network-interface subnet-name=kube-subnet-b,address=192.168.20.3 \
    --create-boot-disk image-folder-id=standard-images,image-name=ubuntu-1604-lts-1539450374,size=20 \
    --ssh-key ./ci/id_rsa.pub

# master03	
~/yandex-cloud/bin/yc compute instance create \
    --name master03 \
    --hostname master03 \
    --zone ru-central1-c \
    --memory 2 \
    --cores 2 \
    --network-interface subnet-name=kube-subnet-c,address=192.168.30.3 \
    --create-boot-disk image-folder-id=standard-images,image-name=ubuntu-1604-lts-1539450374,size=20 \
    --ssh-key ./ci/id_rsa.pub
