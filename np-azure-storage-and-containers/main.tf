terraform {
   required_providers {
     azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.77"
    }
  }
  
    backend "remote" {
    organization = "sherwin-williams"
    workspaces {
      name = "Azure-Storage-and-Container-Creation-np"
    }
  }
}


provider "azurerm" {
  features {}
 }


resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}

# Create the storage account and container only if the resource group does not exist
resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags = {
    environment = "dev"
  }
  resource_group_name       = azurerm_resource_group.resource_group.name
  depends_on = [azurerm_resource_group.resource_group]
}


# Create a container inside the storage account
resource "azurerm_storage_container" "storage_container" {
  for_each = toset(var.container_name)
  name                  = each.key
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = var.container_access_type
  depends_on =  [azurerm_storage_account.storage]
}




  
