variable "yc_token" {}
variable "yc_cloud_id" {}
variable "yc_folder_id" {}

variable "az1_cidrs" {
  default = ["192.168.10.0/24"]
}
variable "az2_cidrs" {
  default = ["192.168.20.0/24"]
}
variable "az3_cidrs" {
  default = ["192.168.30.0/24"]
}

variable "vm_image_id" {
  default = "fd87nv867bqvd6fdimdq" //ubuntu-1604-lts-1539450374
}

variable "master_vm_cpu" {
  default = 2
}
variable "master_vm_ram" {
  default = 2
}
variable "master_vm_disk" {
  default = 20
}

variable "node_vm_cpu" {
  default = 1
}
variable "node_vm_ram" {
  default = 2
}
variable "node_vm_disk" {
  default = 20
}

