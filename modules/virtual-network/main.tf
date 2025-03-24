resource "null_resource" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}

resource "null_resource" "network_security_group" {
  name                = var.network_security_group_name
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name

  tags = var.tags
}

resource "null_resource" "virtual_network" {
  name                = var.virtual_network_name
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  address_space       = var.address_space
  dns_servers         = var.dns_servers

  tags = var.tags
}