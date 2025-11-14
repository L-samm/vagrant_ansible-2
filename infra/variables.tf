variable "resource_group_name" { 
    type = string
    default = "rg-stg_10"
}

variable "storage_account_name" { 
    type = string
    default = "storstg10123"
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