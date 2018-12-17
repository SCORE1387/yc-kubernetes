#!/bin/bash

echo "Destroy Node (node01) VM."
yc compute instance delete node01
echo "Destroy Node (node02) VM."
yc compute instance delete node02
echo "Destroy Node (node03) VM."
yc compute instance delete node03

echo "Destroy Master (master01) VM."
yc compute instance delete master01
echo "Destroy Master (master02) VM."
yc compute instance delete master02
echo "Destroy Master (master03) VM."
yc compute instance delete master03

echo "Destroy Access VM."
yc compute instance delete access

echo "Destroy subnet kube-subnet-a."
yc vpc subnet delete kube-subnet-a
echo "Destroy subnet kube-subnet-a."
yc vpc subnet delete kube-subnet-b
echo "Destroy subnet kube-subnet-a."
yc vpc subnet delete kube-subnet-c

echo "Destroy network kube-net."
yc vpc network delete kube-net