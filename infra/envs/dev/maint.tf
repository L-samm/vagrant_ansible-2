provider "azurerm" {
  features {}
  subscription_id = "6b9318b1-2215-418a-b0fd-ba0832e9b333"
  tenant_id       = "901cb4ca-b862-4029-9306-e5cd0f6d9f86"
  use_cli         = true
  }

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