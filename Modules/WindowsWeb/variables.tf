provider "azurerm" {
    features {}
}

variable "web_name" {
  default = "WindowsWeb"
}

variable "virtual_machine_name" {
  default = "stam-vm"
}

variable "admin_name" {
  default = "ImtheAdmin"
}

variable "admin_pass" {
  default = "123qwe!@#QWE"
}

variable "machine_size" {
  default = "Standard_F2"
}

variable "publisher" {
  default = "MicrosoftWindowsServer"
}

variable "offer" {
  default = "WindowsServer"
}

variable "sku" {
  default = "2016-Datacenter"
}

variable "virtual_machine_version" {
  default = "latest"
}

variable "resource_group_name" {
  default = "stam-rg"
}

variable "network_interface_id" {
  default = "network_interface_id_placeholder"
}

variable "location" {
  default = "East US"
}

variable "caching" {
  default = "ReadWrite"
}

variable "storage_account_type" {
  default = "Standard_LRS"
}