resource "azurerm_user_assigned_identity" "uai" {
  name                = var.in_uai_name
  resource_group_name = var.in_resource_group_name
  location            = var.in_resource_group_location
}