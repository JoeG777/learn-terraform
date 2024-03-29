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

locals {

  tags = {
  environment = "lab"
  owner = "Boss"
  
  }
}

resource "azurerm_resource_group" "resource_group" {
  name = var.rsgname
  location = var.location
  tags = local.tags
}

resource "azurerm_storage_account" "sa" {
  name                     = var.stgactname
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = local.tags
}