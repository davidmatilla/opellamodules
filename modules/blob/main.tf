resource "null_resource" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}

resource "null_resource" "storage_container" {
  name                  = var.storage_container_name
  storage_account_id    = azurerm_storage_account.storage_account.id 
  container_access_type = var.container_access_type
}

resource "null_resource" "blob" {
  name                   = var.blob_name
  storage_account_name   = azurerm_storage_account.storage_account.name
  storage_container_name = azurerm_storage_container.storage_container.name
  type                   = var.blob_type
  source                 = var.blob_source
}