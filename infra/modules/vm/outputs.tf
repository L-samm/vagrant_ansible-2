output "vm_id" {
  value = azurerm_linux_virtual_machine.vm.id
}

# Récupérer en output lIP de la VM pour l'ajouter dans le fichier inventory de ansible
output "ip_vm" {
  value = azurerm_network_interface.nic.private_ip_address
}