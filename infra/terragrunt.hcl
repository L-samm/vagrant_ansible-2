remote_state {
  backend = "azurerm"
  config = {
    resource_group_name  = "rg-stg_10"
    storage_account_name = "tfstatebackendsammuel2"
    container_name       = "tfstate"
    key                  = "\${path_relative_to_include()}/terraform.tfstate"
  }
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
  provider "azurerm" {
    features {}
  }
  EOF
}

# common variables, not used right now but good for future expansion
# inputs = {
#   location = "westeurope"
# }
