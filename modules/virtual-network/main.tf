resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_network_security_group" "network_security_group" {
  name                = var.network_security_group_name
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name

  tags = var.tags
}

resource "azurerm_virtual_network" "virtual_network" {
  name                = var.virtual_network_name
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  address_space       = var.address_space
  dns_servers         = var.dns_servers

  tags = var.tags
}