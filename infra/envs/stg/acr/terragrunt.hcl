include {
  path = find_in_parent_folders()
}

locals {
  env_vars = read_terragrunt_config(find_in_parent_folders("terraform.tfvars"))
}

terraform {
  source = "../../../modules/acr"
}

inputs = {
  resource_group_name = local.env_vars.inputs.resource_group_name
  location            = local.env_vars.inputs.location
  acr_name            = local.env_vars.inputs.acr_name
}
