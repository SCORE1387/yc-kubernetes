locals {
  ssh-keys = "centos:${file("files/id_rsa.pub")}"
}

resource "yandex_compute_instance" "master01" {
  name = "master01"
  zone = "ru-central1-a"
  allow_stopping_for_update = "true"

  resources {
    cores  = "${var.master_vm_cpu}"
    memory = "${var.master_vm_ram}"
  }

  boot_disk {
    initialize_params {
      name = "master01-boot-disk"
      size = "${var.master_vm_disk}"
      image_id = "${var.vm_image_id}"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.kube-subnet-a.id}"
    ip_address = "${cidrhost(var.az1_cidrs[0], 3)}"
    nat       = true
  }

  metadata {
    ssh-keys = "${local.ssh-keys}"
  }
}

resource "yandex_compute_instance" "master02" {
  name = "master02"
  zone = "ru-central1-b"
  allow_stopping_for_update = "true"

  resources {
    cores  = "${var.master_vm_cpu}"
    memory = "${var.master_vm_ram}"
  }

  boot_disk {
    initialize_params {
      name = "master02-boot-disk"
      size = "${var.master_vm_disk}"
      image_id = "${var.vm_image_id}"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.kube-subnet-b.id}"
    ip_address = "${cidrhost(var.az2_cidrs[0], 3)}"
    nat       = true
  }

  metadata {
    ssh-keys = "${local.ssh-keys}"
  }
}

resource "yandex_compute_instance" "master03" {
  name = "master03"
  zone = "ru-central1-c"
  allow_stopping_for_update = "true"

  resources {
    cores  = "${var.master_vm_cpu}"
    memory = "${var.master_vm_ram}"
  }

  boot_disk {
    initialize_params {
      name = "master03-boot-disk"
      size = "${var.master_vm_disk}"
      image_id = "${var.vm_image_id}"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.kube-subnet-c.id}"
    ip_address = "${cidrhost(var.az3_cidrs[0], 3)}"
    nat       = true
  }

  metadata {
    ssh-keys = "${local.ssh-keys}"
  }
}

resource "yandex_compute_instance" "node01" {
  name = "node01"
  zone = "ru-central1-a"
  allow_stopping_for_update = "true"

  resources {
    cores  = "${var.node_vm_cpu}"
    memory = "${var.node_vm_ram}"
  }

  boot_disk {
    initialize_params {
      name = "node01-boot-disk"
      size = "${var.node_vm_disk}"
      image_id = "${var.vm_image_id}"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.kube-subnet-a.id}"
    ip_address = "${cidrhost(var.az1_cidrs[0], 10)}"
    nat       = true
  }

  metadata {
    ssh-keys = "${local.ssh-keys}"
  }
}

resource "yandex_compute_instance" "node02" {
  name = "node02"
  zone = "ru-central1-b"
  allow_stopping_for_update = "true"

  resources {
    cores  = "${var.node_vm_cpu}"
    memory = "${var.node_vm_ram}"
  }

  boot_disk {
    initialize_params {
      name = "node02-boot-disk"
      size = "${var.node_vm_disk}"
      image_id = "${var.vm_image_id}"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.kube-subnet-b.id}"
    ip_address = "${cidrhost(var.az2_cidrs[0], 10)}"
    nat       = true
  }

  metadata {
    ssh-keys = "${local.ssh-keys}"
  }
}

resource "yandex_compute_instance" "node03" {
  name = "node03"
  zone = "ru-central1-c"
  allow_stopping_for_update = "true"

  resources {
    cores  = "${var.node_vm_cpu}"
    memory = "${var.node_vm_ram}"
  }

  boot_disk {
    initialize_params {
      name = "node03-boot-disk"
      size = "${var.node_vm_disk}"
      image_id = "${var.vm_image_id}"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.kube-subnet-c.id}"
    ip_address = "${cidrhost(var.az3_cidrs[0], 10)}"
    nat       = true
  }

  metadata {
    ssh-keys = "${local.ssh-keys}"
  }
}