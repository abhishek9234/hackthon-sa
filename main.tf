# Configure the Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "4c37f0e1-134e-4a4e-8d0f-fde9cb825586"
}

# Create a Storage Account
resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
