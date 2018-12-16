# yc-kubernetes

Install Kubernetes to Yandex Cloud

## TODO

- Create admin user after installation and save token
`kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep admin-user | awk '{print $1}')`

- Deploy Helm

- Deploy Ingress controller

- Deploy GlusterFS

- Use valid certificate

- Deploy load balancer for kube nodes

- DNS registration