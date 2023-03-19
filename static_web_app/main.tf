resource "azurerm_static_site" "static_site" {
  name                = var.in_static_site_name
  location            = var.in_resource_group_location
  resource_group_name = var.in_resource_group_name
}