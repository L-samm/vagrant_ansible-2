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
}

provider "ansible" {}
