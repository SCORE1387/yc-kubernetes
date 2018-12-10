#!/bin/bash

yc vpc network create --name kube-net

yc vpc subnet create kube-subnet-a \
  --network-name kube-net \
  --zone ru-central1-a \
  --range 192.168.10.0/24

yc vpc subnet create kube-subnet-b \
  --network-name kube-net \
  --zone ru-central1-b \
  --range 192.168.20.0/24

yc vpc subnet create kube-subnet-c \
  --network-name kube-net \
  --zone ru-central1-c \
  --range 192.168.30.0/24  