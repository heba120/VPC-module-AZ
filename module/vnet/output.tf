output "vnet_id" {
  description = "the vnet id "
  value       = azurerm_virtual_network.vnet.id
}
output "vnet_name" {
  description = "the vnet name "
  value       = azurerm_virtual_network.vnet.name
}
output "resource_group_name" {
  value = azurerm_resource_group.module.name
}

output "location" {
  value = azurerm_resource_group.module.location
}