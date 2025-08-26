# ===============
# Variables
# ===============

variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = "infra-network"
}

variable "net_cidr" {
  description = "Subnet structure"
  type = list(object({
    name   = string,
    zone   = string,
    prefix = string
  }))

  default = [
    { name = "infra-subnet-a", zone = "ru-central1-a", prefix = "10.129.1.0/24" },
    { name = "infra-subnet-b", zone = "ru-central1-b", prefix = "10.130.1.0/24" },
    { name = "infra-subnet-d", zone = "ru-central1-d", prefix = "10.131.1.0/24" },
  ]
}

variable "vm_1_name" {
  type    = string
  default = "vm-kittygram"
}

variable "ssh_key" {
  description = "SSH Public Key"
  type        = string
}

variable "cloud_id" {
  description = "Cloud ID"
  type        = string
}

variable "folder_id" {
  description = "Folder ID"
  type        = string
}

variable "image_family" {
  description = "Image Family"
  type        = string
  default     = "ubuntu-2404-lts"
}

variable "zone" {
  description = "Yandex VM zone"
  type        = string
  default     = "ru-central1-a"
}

variable "platform_id" {
  description = "Platform ID"
  type        = string
  default     = "standard-v3"
}

variable "cores" {
  description = "VM cores"
  type        = number
  default     = 4
}

variable "memory" {
  description = "VM memory"
  type        = number
  default     = 8
}

variable "disk_type" {
  description = "Disk type"
  type        = string
  default     = "network-nvme"
}

variable "disk_size" {
  description = "Disk size"
  type        = number
  default     = 50
}

variable "nat" {
  description = "NAT"
  type        = bool
  default     = true
}

variable "server_host" {
  description = "YC IP Address VM"
  type        = string
}
