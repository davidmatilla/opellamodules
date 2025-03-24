variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "The Azure region where the storage resources will be deployed"
  type        = string
  default     = "East US"  # Change as needed
}

variable "storage_account_name" {
  description = "The name of the Azure Storage Account"
  type        = string
}

variable "storage_account_tier" {
  description = "The performance tier of the storage account (Standard or Premium)"
  type        = string
  default     = "Standard"
}

variable "storage_account_replication_type" {
  description = "The replication type of the storage account (LRS, GRS, RAGRS, ZRS)"
  type        = string
  default     = "LRS"
}

variable "storage_container_name" {
  description = "The name of the Storage Container inside the Storage Account"
  type        = string
}

variable "container_access_type" {
  description = "The access level of the container (private, blob, or container)"
  type        = string
  default     = "private"
}

variable "blob_name" {
  description = "The name of the Storage Blob to be created"
  type        = string
}

variable "type" {
  description = "The type of the Storage Blob (Block, Append, Page)"
  type        = string
  default     = "Block"
}

variable "source" {
  description = "The local file path of the blob to be uploaded"
  type        = string
}
