provider "azurerm" {
  features {}
}

variable "sql_server_name" {
  default = "mssqlserver"
}

variable "resource_group_name" {
  default = "stam-rg"
}

variable "location" {
  default = "East US"
}

variable "sql_version" {
  default = "12.0"
}

variable "admin_name" {
  default = "ThisisAdmin"
}

variable "admin_pass" {
  default = "123qwe!@#QWE"
}

variable "storage_account_name" {
  default = "stamsa"
}

variable "account_tier" {
  default = "Standard"
}

variable "account_replication_type" {
  default = "LRS"
}

variable "is_secondary" {
  default = true
}

variable "retention_in_days" {
  default = 6
}

variable "minimum_tls_version" {
  default = "1.2"
}