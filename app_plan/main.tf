resource "azurerm_app_service_plan" "azappplan" {
  name                = var.in_appplan_name
  location            = var.in_resource_group_location
  resource_group_name = var.in_resource_group_name
  kind                = var.in_appplan_kind
  reserved            = true

  sku {
    tier = var.in_appplan_sku_tier
    size = var.in_appplan_sku_size
  }
}