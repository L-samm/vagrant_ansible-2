terraform {
  backend "azurerm" {
    resource_group_name  = "rg-stg_10"
    storage_account_name = "tfstatebackendsammuel"
    container_name       = "STG_tfstate"
    key                  = "terraform-stg.tfstate"
  }
}