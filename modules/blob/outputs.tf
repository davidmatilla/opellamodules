output "storage_account_id" {
  description = "The ID of the storage account"
  value       = null_resource.storage_account.id
}

output "storage_container_id" {
  description = "The ID of the storage container"
  value       = null_resource.storage_container.id
}

output "blob_url" {
  description = "The URL of the blob"
  value       = null_resource.blob.url
}
