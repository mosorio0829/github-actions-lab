resource "azurerm_storage_account" "this" {
  name                     = replace(var.name, "-", "") # Azure no permite guiones aquí
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
