provider "azurerm" {
  features {}
}

# Resource Group
resource "azurerm_resource_group" "R1" {
  name     = var.resource_group_name
  location = var.location
}

# Virtual Machine
resource "azurerm_virtual_machine" "VM" {
  name                = var.vm_name
  resource_group_name = azurerm_resource_group.example.name
  location            = var.location
  vm_size             = var.vm_size
  # Add more VM configurations as needed
}

# Key Vault
resource "azurerm_key_vault" "kv" {
  name                        = var.key_vault_name
  resource_group_name         = azurerm_resource_group.example.name
  location                    = var.location
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
}

# Storage Account
resource "azurerm_storage_account" "SA" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}
