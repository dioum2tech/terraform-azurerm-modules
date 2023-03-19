resource "azurerm_application_insights" "application_insights" {
  name                = var.in_application_insights_name
  resource_group_name = var.in_resource_group_name
  location            = var.in_resource_group_location
  application_type    = "web"
}