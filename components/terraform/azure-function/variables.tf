variable "name" { type = string }
variable "resource_group_name" { type = string }
variable "location" { type = string }

# Variables puente para encontrar los otros recursos
#variable "app_insights_name" { type = string }
variable "storage_account_name" { type = string }
variable "service_plan_name" { type = string }
