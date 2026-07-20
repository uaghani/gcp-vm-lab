output "vm_names" {
  value = google_compute_instance.lab_vm[*].name
}

output "vm_external_ips" {
  value = [
    for vm in google_compute_instance.lab_vm :
    vm.network_interface[0].access_config[0].nat_ip
  ]
}
