#!/bin/bash

# master01
yc compute instance create \
    --name master01 \
	--hostname master01 \
    --zone ru-central1-a \
	--memory 2 \
	--cores 2 \
    --public-ip \
    --create-boot-disk image-folder-id=standard-images,image-name=ubuntu-1604-lts-1539450374,size=20 \
    --ssh-key ./ci/id_rsa.pub
	
# master02
yc compute instance create \
    --name master01 \
	--hostname master02 \
    --zone ru-central1-b \
	--memory 2 \
	--cores 2 \
    --public-ip \
    --create-boot-disk image-folder-id=standard-images,image-name=ubuntu-1604-lts-1539450374,size=20 \
    --ssh-key ./ci/id_rsa.pub

# master03	
yc compute instance create \
    --name master03 \
	--hostname master01 \
    --zone ru-central1-c \
	--memory 2 \
	--cores 2 \
    --public-ip \
    --create-boot-disk image-folder-id=standard-images,image-name=ubuntu-1604-lts-1539450374,size=20 \
    --ssh-key ./ci/id_rsa.pub
