output "vm_id" {
  value = azurerm_linux_virtual_machine.vm.id
}

# Récupérer en output lIP de la VM pour l'ajouter dans le fichier inventory de ansible
output "public_ip_vm" {
  value = azurerm_public_ip.vm_public_ip.ip_address
}