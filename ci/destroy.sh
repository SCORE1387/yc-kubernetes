#!/bin/bash

echo "Destroy Node (node01) VM."
~/yandex-cloud/bin/yc compute instance delete node01
echo "Destroy Node (node02) VM."
~/yandex-cloud/bin/yc compute instance delete node02
echo "Destroy Node (node03) VM."
~/yandex-cloud/bin/yc compute instance delete node03

echo "Destroy Master (master01) VM."
~/yandex-cloud/bin/yc compute instance delete master01
echo "Destroy Master (master02) VM."
~/yandex-cloud/bin/yc compute instance delete master02
echo "Destroy Master (master03) VM."
~/yandex-cloud/bin/yc compute instance delete master03

echo "Destroy Access VM."
~/yandex-cloud/bin/yc compute instance delete access