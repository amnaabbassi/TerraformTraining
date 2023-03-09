terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.46.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# create a storage account in AZ

# resource "azurerm_resource_group" "amna" {
#   name     = "butterfly"
#   location = "West Europe"
# }

# resource "azurerm_storage_account" "this" {
#   name                     = "exerciceterraformabbassi"
#   resource_group_name      = azurerm_resource_group.amna.name
#   location                 = azurerm_resource_group.amna.location
#   account_tier             = "Standard"
#   account_replication_type = "GRS"

#   tags = {
#     environment = "staging"
#   }
# }

# resource "azurerm_resource_group" "abbassi" {
#   name     = "TerraformExercice"
#   location = "France Central"
# }