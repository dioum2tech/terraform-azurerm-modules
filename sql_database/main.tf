resource "azurerm_mssql_database" "mssql_database" {
  name           = var.in_mssql_database_name
  server_id      = var.in_mssql_server_id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  max_size_gb    = 4
  read_scale     = false
  sku_name       = "S0"
  zone_redundant = false

  tags = {}
}