# Réutiliser le Resource Group existant
data "azurerm_resource_group" "existing" {
  name = var.resource_group_name
}

# Modules
module "storage" {
  source               = "../../modules/storage"
  storage_account_name = var.storage_account_name
  resource_group_name  = data.azurerm_resource_group.existing.name
  location             = data.azurerm_resource_group.existing.location
}

module "acr" {
  source               = "../../modules/acr"
  acr_name             = var.acr_name
  resource_group_name  = data.azurerm_resource_group.existing.name
  location             = data.azurerm_resource_group.existing.location
}

module "vm" {
  source               = "../../modules/vm"
  vm_name              = var.vm_name
  resource_group_name  = data.azurerm_resource_group.existing.name
  location             = data.azurerm_resource_group.existing.location
  admin_username       = var.admin_username
  ssh_public_key_path  = var.ssh_public_key_path
}