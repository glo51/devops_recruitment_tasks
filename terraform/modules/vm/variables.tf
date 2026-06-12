variable "vm_name" {
  nullable = false
  type     = string
}

variable "vcpus" {
  default     = 2
  nullable    = false
  type        = number
  description = "Number of virtual CPUs for the VM"
  validation {
    condition     = var.vcpus > 0
    error_message = "vCPUs number must be greater than 0."
  }
}

variable "ram_mb" {
  default     = 2048
  nullable    = false
  type        = number
  description = "Megabytes of RAM for the VM"
  validation {
    condition     = var.ram_mb > 0
    error_message = "Megabytes of RAM must be greater than 0."
  }
}

variable "disk_gb" {
  default     = 20
  nullable    = false
  type        = number
  description = "Gigabytes of disk space for the VM"
  validation {
    condition     = var.disk_gb > 0
    error_message = "Gigabytes of disk space must be greater than 0."
  }
}

variable "vlan_id" {
  nullable = false
  type     = number
  validation {
    condition     = var.vlan_id >= 1
    error_message = "VLAN ID can't be less than 1."
  }
}

variable "ip_address" {
  nullable = false
  type     = string
}
