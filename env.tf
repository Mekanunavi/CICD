terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.90.0"
    }
  }
}

module "module_dev" {
    source = "./modules"
    resource_group_name              = "dev-resource-group"
    location                         = "East US"
    vm_name                          = "dev-vm"
    vm_size                          = "Standard_DS1_v2"
    key_vault_name                   = "dev12-keyvault"
    nicname                          = "dev-NIC"
    subnet                           = "dev-subnet"
    vnet                             = "dev1-vnet"
    storage_account_name             = "dev12storageaccount"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "LRS"
}

module "module_qa" {
    source = "./modules"
    resource_group_name              = "qa-resource-group"
    location                         = "West US"
    vm_name                          = "qa-vm"
    vm_size                          = "Standard_DS2_v2"
    key_vault_name                   = "qa12-keyvault"
    nicname                          = "qa-NIC"
    subnet                           = "qa-subnet"
    vnet                             = "qa1-vnet"
    storage_account_name             = "qa1storage1account"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "GRS"
}

module "module_preprod" {
    source = "./modules"
    resource_group_name              = "preprod-resource-group"
    location                         = "North Europe"
    vm_name                          = "preprod-vm"
    vm_size                          = "Standard_DS2_v2"
    key_vault_name                   = "preprod12-keyvault"
    nicname                          = "preprod-NIC"
    subnet                           = "preprod-subnet"
    vnet                             = "preprod1-vnet"
    storage_account_name             = "preprod1storage1account"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "GRS"

}

module "module_prod" {
    source = "./modules"
    resource_group_name          = "prod-resource-group"
    location                         = "West US"
    vm_name                          = "prod-vm"
    vm_size                          = "Standard_DS3_v2"
    key_vault_name                   = "prod1952-keyvault"
    nicname                          = "prod-NIC"
    subnet                           = "Prod-subnet"
    vnet                             = "Prod1-vnet"
    storage_account_name             = "prod1storage12account"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "GRS"

}