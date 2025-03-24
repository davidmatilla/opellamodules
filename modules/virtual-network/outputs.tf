output "vnet_id" {
  description = "The ID of the virtual network"
  value       = azurerm_virtual_network.virtual_network.id
}

output "rg_id" {
  description = "The ID of the resource group"
  value       = azurerm_resource_group.resource_group.id
}
