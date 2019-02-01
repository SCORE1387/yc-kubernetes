#!/bin/bash

lb_ip=$(terraform output external_ip_address_lb01)
echo "Load Balancer Public IP: ${lb_ip}"

service_name="kube"

curl -X PUT \
  https://api.godaddy.com/v1/domains/${GODADDY_DOMAIN}/records/A/${service_name} \
  -H "Authorization: sso-key ${GODADDY_API_KEY}:${GODADDY_API_SECRET}" \
  -H "Content-Type: application/json" \
  -d "[
  {
    \"data\": \"${lb_ip}\",
    \"name\": \"${service_name}\",
    \"service\": \"kube\",
    \"ttl\": 600,
    \"type\": \"A\"
  }
]"

