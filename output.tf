// Define outputs
output "storage_account_connection_string" {
  #count = length(var.resource_groups) 
  value = azurerm_storage_account.storage.primary_connection_string
  sensitive = true
}

 

output "storage_container_name" {
#  count = length(var.resource_groups)
  value = azurerm_storage_container.storage_container[each.key]
}

