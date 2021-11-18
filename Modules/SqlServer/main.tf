resource "azurerm_resource_group" "myRG" {
  name      = var.resource_group_name
  location  = var.location
}

resource "azurerm_storage_account" "mySA" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.myRG.name
  location                 = azurerm_resource_group.myRG.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

# resource "azurerm_sql_server" "SqlServer" {
#   name = var.sql_server_name
#   resource_group_name = var.resource_group_name
#   location = var.location
#   version = var.sql_version
#   administrator_login = var.admin_name
#   administrator_login_password = var.admin_pass

# }

resource "azurerm_mssql_server" "MsSqlServer" {
  name                         = var.sql_server_name
  resource_group_name          = azurerm_resource_group.myRG.name
  location                     = azurerm_resource_group.myRG.location
  version                      = var.sql_version
  administrator_login          = var.admin_name
  administrator_login_password = var.admin_pass
  minimum_tls_version          = var.minimum_tls_version

}