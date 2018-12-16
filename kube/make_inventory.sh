#!/bin/bash

# $1 - vm name
function make_ip {
    local name=$1

public_ip=$(~/yandex-cloud/bin/yc compute instance get ${name} --format json | jq .network_interfaces[0].primary_v4_address.one_to_one_nat.address)
echo "${name} VM Public IP: ${public_ip}"

sed -i -e "s/{{ ${name}_ip }}/${public_ip}/g" ./kube/kubespray_inventory/kube_hosts.ini

}

make_ip master01
make_ip master02
make_ip master03

make_ip node01
make_ip node02
make_ip node03

