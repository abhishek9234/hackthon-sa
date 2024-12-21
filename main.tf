# Configure the Azure Provider
provider "azurerm" {
  features {}
}

# Input Variables
variable "resource_group_name" {}
variable "location" {
  default = "East US"
}
variable "storage_account_name" {}

# Create a Resource Group
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

# Create a Storage Account
resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}