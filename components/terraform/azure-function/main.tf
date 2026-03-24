#data "azurerm_application_insights" "this" {
#  name  = var.app_insights_name
#  resource_group_name = var.resource_group_name
#}

data "azurerm_storage_account" "this" {
  name                = var.storage_account_name
  resource_group_name = var.resource_group_name
}

data "azurerm_service_plan" "this" {
  name                = var.service_plan_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_linux_function_app" "name" {
  name                       = var.name
  location                   = var.location
  resource_group_name        = var.resource_group_name
  service_plan_id            = data.azurerm_service_plan.this.id
  storage_account_access_key = data.azurerm_storage_account.this.primary_access_key
  storage_account_name       = var.storage_account_name
  site_config {
    application_insights_connection_string = "1234"
  }
}
