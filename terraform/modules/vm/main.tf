resource "local_file" "vm_spec" {
  filename = "${path.root}/generated/${var.vm_name}.json"
  content = jsonencode({
    vm_name    = var.vm_name
    ip_address = var.ip_address
    vcpus      = var.vcpus
    ram_mb     = var.ram_mb
    disk_gb    = var.disk_gb
    vlan_id    = var.vlan_id
  })
}

resource "null_resource" "vm_creation" {
  triggers = {
    spec = sha256(local_file.vm_spec.content)
  }
  depends_on = [local_file.vm_spec]
  provisioner "local-exec" {
    command = "echo Creating VM ${var.vm_name}..."
  }
}
