include {
  path = find_in_parent_folders()
}

locals {
  env_vars = read_terragrunt_config(find_in_parent_folders("terraform.tfvars"))
}

terraform {
  source = "../../../modules/vm"
}

inputs = {
  env_name            = local.env_vars.inputs.env_name
  vm_name             = local.env_vars.inputs.vm_name
  resource_group_name = local.env_vars.inputs.resource_group_name
  location            = local.env_vars.inputs.location
  admin_username      = local.env_vars.inputs.admin_username
  ssh_public_key      = local.env_vars.inputs.ssh_public_key
}