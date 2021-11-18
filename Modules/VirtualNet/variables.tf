provider "azurerm" {
    features {}
}

variable "resource_group_name" {
  default = "stam-rg"
}

variable "location" {
  default = "East US"
}

variable "virtual_network_name" {
  default = "stam_vn"
}

variable "address_space" {
  default = "10.0.0.0/16"
}

variable "subnet1" {
  default = "subnet1"
}

variable "subnet2" {
  default = "subnet2"
}

variable "subnet3" {
  default = "subnet3"
}

variable "add_prefix1" {
  default = "10.0.1.0/24"
}

variable "add_prefix2" {
  default = "10.0.2.0/24"
}

variable "add_prefix3" {
  default = "10.0.3.0/24"
}

variable "network_interface_name" {
  default = "stam_ni"
}

variable "network_security_group_name" {
  default = "stam_nsg"
}

variable "ipconf_name" {
  default = "stam_ipconf"
}

variable "private_ip_address_alloc" {
  default = "Dynamic"
}

variable "security_rule_name" {
  default = "stam-srm"
}

variable "security_rule_priority" {
  default = 100
}

variable "direction" {
  default = "Inbound"
}

variable "access" {
  default = "Allow"
}

variable "protocol" {
  default = "Tcp"
}

variable "source_port_range" {
  default = "*"
}

variable "destination_port_range" {
  default = "*"
}

variable "source_address_prefix" {
  default = "*"
}

variable "destination_address_prefix" {
  default = "*"
}
