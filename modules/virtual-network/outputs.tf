output "vnet_id" {
  description = "The ID of the virtual network"
  value       = null_resource.virtual_network.id
}

output "rg_id" {
  description = "The ID of the resource group"
  value       = null_resource.resource_group.id
}
