variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be deployed"
  type        = string
  default     = "East US"  # Change as needed
}

variable "network_security_group_name" {
  description = "The name of the Network Security Group (NSG)"
  type        = string
}

variable "virtual_network_name" {
  description = "The name of the Virtual Network (VNET)"
  type        = string
}

variable "address_space" {
  description = "The address space of the Virtual Network"
  type        = list(string)
}

variable "dns_servers" {
  description = "List of DNS servers for the Virtual Network"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A map of tags to apply to resources"
  type        = map(string)
  default     = {}
}
