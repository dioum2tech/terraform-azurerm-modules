resource "azurerm_mssql_server" "mssql_server" {
  name                         = var.in_mssql_server_name
  resource_group_name          = var.in_resource_group_name
  location                     = var.in_resource_group_location
  version                      = "12.0"
  administrator_login          = var.in_mssql_server_administrator_login
  administrator_login_password = var.in_mssql_server_administrator_login_password
}