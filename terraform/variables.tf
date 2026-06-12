variable "vm_list" {
  description = "A list of VMs' specifications"
  nullable    = false
  type = list(object({
    vm_name    = string
    vcpus      = number
    ram_mb     = number
    disk_gb    = number
    vlan_id    = number
    ip_address = string
  }))
}
