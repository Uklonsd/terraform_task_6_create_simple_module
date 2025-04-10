terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
}

provider "azurerm" {
  subscription_id = local.subscription_id
}

module "resource_group_storage" {
  source   = "Uklonsd/resource_group_storage/azurerm"
  version  = "1.0.0"
  prefix   = "task6"
  location = "West Europe"
}