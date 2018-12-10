#!/bin/bash

echo "Create network kube-net"
~/yandex-cloud/bin/yc vpc network create --name kube-net

echo "Create subnet kube-subnet-a"
~/yandex-cloud/bin/yc vpc subnet create kube-subnet-a \
  --network-name kube-net \
  --zone ru-central1-a \
  --range 192.168.10.0/24

echo "Create subnet kube-subnet-b"
~/yandex-cloud/bin/yc vpc subnet create kube-subnet-b \
  --network-name kube-net \
  --zone ru-central1-b \
  --range 192.168.20.0/24

echo "Create subnet kube-subnet-c"
~/yandex-cloud/bin/yc vpc subnet create kube-subnet-c \
  --network-name kube-net \
  --zone ru-central1-c \
  --range 192.168.30.0/24  