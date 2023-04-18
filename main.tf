provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}


# Check if the resource group already exists, else create it
data "azurerm_resource_group" "example" {
 name = var.resource_group_name
}

/* resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
} */


# Create the storage account and container only if the resource group does not exist
resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags = {
    environment = "dev"
  }
  resource_group_name       = data.azurerm_resource_group.example.name
 # depends_on = [data.azurerm_resource_group.example]
}


# Create a container inside the storage account
resource "azurerm_storage_container" "storage_container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = var.container_access_type
}


  