output "internal_ip_address_master01" {
  value = "${yandex_compute_instance.master01.network_interface.0.ip_address}"
}

output "external_ip_address_master01" {
  value = "${yandex_compute_instance.master01.network_interface.0.nat_ip_address}"
}

output "internal_ip_address_master02" {
  value = "${yandex_compute_instance.master02.network_interface.0.ip_address}"
}

output "external_ip_address_master02" {
  value = "${yandex_compute_instance.master02.network_interface.0.nat_ip_address}"
}

output "internal_ip_address_master03" {
  value = "${yandex_compute_instance.master03.network_interface.0.ip_address}"
}

output "external_ip_address_master03" {
  value = "${yandex_compute_instance.master03.network_interface.0.nat_ip_address}"
}


output "internal_ip_address_node01" {
  value = "${yandex_compute_instance.node01.network_interface.0.ip_address}"
}

output "external_ip_address_node01" {
  value = "${yandex_compute_instance.node01.network_interface.0.nat_ip_address}"
}

output "internal_ip_address_node02" {
  value = "${yandex_compute_instance.node02.network_interface.0.ip_address}"
}

output "external_ip_address_node02" {
  value = "${yandex_compute_instance.node02.network_interface.0.nat_ip_address}"
}

output "internal_ip_address_node03" {
  value = "${yandex_compute_instance.node03.network_interface.0.ip_address}"
}

output "external_ip_address_node03" {
  value = "${yandex_compute_instance.node03.network_interface.0.nat_ip_address}"
}

output "internal_ip_address_lb01" {
  value = "${yandex_compute_instance.lb01.network_interface.0.ip_address}"
}

output "external_ip_address_lb01" {
  value = "${yandex_compute_instance.lb01.network_interface.0.nat_ip_address}"
}