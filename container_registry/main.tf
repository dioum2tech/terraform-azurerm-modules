resource "azurerm_container_registry" "acr" {
  name                = var.in_acr_name
  resource_group_name = var.in_resource_group_name
  location            = var.in_resource_group_location
  sku                 = var.in_acr_sku
  admin_enabled       = var.in_admin_enabled

  identity {
    type = "UserAssigned"
    identity_ids = [
      var.in_uai_id
    ]
  }
}