####################### OUTPUTS ##########################
output "uai_client_id" {
  value = azurerm_user_assigned_identity.uai.client_id
}

output "uai_id" {
  value = azurerm_user_assigned_identity.uai.id
}