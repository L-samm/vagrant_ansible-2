variable "resource_group_name" { 
    type = string
}

variable "storage_account_name" { 
    type = string
}

variable "acr_name" { 
    type = string
    default = "acrstg10123"
}

variable "vm_name" { 
    type = string
    default = "vm-stg"
}

variable "admin_username" { 
    type = string
    default = "azureuser"
}

variable "ssh_public_key" { 
    type = string
}

variable "env_name" {
    type = string
}

variable "location" {
    type = string
}
