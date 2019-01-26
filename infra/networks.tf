resource "yandex_vpc_network" "kube-net" {
  name = "kube-net"
}

resource "yandex_vpc_subnet" "kube-subnet-a" {
  name           = "kube-subnet-a"
  zone           = "ru-central1-a"
  network_id     = "${yandex_vpc_network.kube-net.id}"
  v4_cidr_blocks = "${var.az1_cidrs}"
}

resource "yandex_vpc_subnet" "kube-subnet-b" {
  name           = "kube-subnet-b"
  zone           = "ru-central1-b"
  network_id     = "${yandex_vpc_network.kube-net.id}"
  v4_cidr_blocks = "${var.az2_cidrs}"
}

resource "yandex_vpc_subnet" "kube-subnet-c" {
  name           = "kube-subnet-c"
  zone           = "ru-central1-c"
  network_id     = "${yandex_vpc_network.kube-net.id}"
  v4_cidr_blocks = "${var.az3_cidrs}"
}
