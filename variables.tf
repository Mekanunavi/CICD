variable "resource_group_name" {
  description = "The name of the Azure resource group."
}

variable "location" {
  description = "The Azure region where the resources will be deployed."
}

variable "vm_name" {
  description = "The name of the Virtual Machine."
}

variable "vm_size" {
  description = "The size of the Virtual Machine."
}

variable "key_vault_name" {
  description = "The name of the Key Vault."
}

variable "storage_account_name" {
  description = "The name of the Storage Account."
}

variable "storage_account_tier" {
  description = "The tier of the Storage Account."
}

variable "storage_account_replication_type" {
  description = "The replication type of the Storage Account."
}
