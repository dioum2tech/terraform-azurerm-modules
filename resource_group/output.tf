####################### OUTPUTS ##########################
output "resource_group_id" {
  description = "Id resource group"
  value       = azurerm_resource_group.rg.id
}

output "resource_group_name" {
  description = "Id resource group"
  value       = azurerm_resource_group.rg.name
}

output "resource_group_location" {
  description = "Id resource group"
  value       = azurerm_resource_group.rg.location
}