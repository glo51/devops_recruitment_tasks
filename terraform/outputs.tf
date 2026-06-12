output "created_vms" {
  value = {
    for vm_name, vm_spec in module.vm : vm_spec.vm_name => vm_spec.ip_address
  }
}
