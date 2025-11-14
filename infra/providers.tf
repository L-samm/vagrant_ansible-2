terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "~> 4.44.0"
        }

        ansible = {
            source  = "ansible/ansible"
            version = "~> 1.3.0"
        }
    }

    required_version = ">= 1.6.0"
}

provider "azurerm" {
    features {}
    
    subscription_id = var.subscription_id
    client_id = var.client_id
    client_secret = var.client_secret
    tenant_id = var.tenant_id
}

provider "ansible" {}
