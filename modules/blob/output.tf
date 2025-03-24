output "storage_account_id" {
  description = "The ID of the storage account"
  value       = azurerm_storage_account.storage_account.id
}

output "storage_container_id" {
  description = "The ID of the storage container"
  value       = azurerm_storage_container.storage_container.id
}

output "blob_url" {
  description = "The URL of the blob"
  value       = azurerm_storage_blob.blob.url
}
