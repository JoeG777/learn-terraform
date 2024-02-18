terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.92.0"
    }
  }
}

provider "azurerm" {
    skip_provider_registration = true
    features {}
  
}

module "ressource_group" {
  source = "./rg_group"
  location = "West Europe"
  base_name = "terraformex01"
}

module "storage_account" {
  source = "./stg_act"
  base_name = "terraformex01"
  location = "West Europe"
  resource_group_name = module.ressource_group.rg_name_output
  
}