resource "yandex_compute_disk" "node01-glusterfs" {
  name     = "node01-glusterfs"
  zone     = "ru-central1-a"
  size     = "${var.glusterfs_disk_size}"
}
resource "yandex_compute_disk" "node02-glusterfs" {
  name     = "node02-glusterfs"
  zone     = "ru-central1-b"
  size     = "${var.glusterfs_disk_size}"
}
resource "yandex_compute_disk" "node03-glusterfs" {
  name     = "node03-glusterfs"
  zone     = "ru-central1-c"
  size     = "${var.glusterfs_disk_size}"
}