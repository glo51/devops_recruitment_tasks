module "vm" {
  source   = "./modules/vm"
  for_each = { for vm in var.vm_list : vm.vm_name => vm }

  vm_name    = each.value.vm_name
  vcpus      = each.value.vcpus
  ram_mb     = each.value.ram_mb
  disk_gb    = each.value.disk_gb
  vlan_id    = each.value.vlan_id
  ip_address = each.value.ip_address
}
