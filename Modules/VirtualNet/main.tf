resource "azurerm_resource_group" "myRG" {
  name      = var.resource_group_name
  location  = var.location
}

resource "azurerm_network_security_group" "NSG" {
  name                = var.network_security_group_name
  location            = var.location
  resource_group_name = var.resource_group_name
  
    security_rule {
    name                       = var.security_rule_name
    priority                   = var.security_rule_priority
    direction                  = var.direction
    access                     = var.access
    protocol                   = var.protocol
    source_port_range          = var.source_port_range
    destination_port_range     = var.destination_port_range
    source_address_prefix      = var.source_address_prefix
    destination_address_prefix = var.destination_address_prefix
  }
}

resource "azurerm_virtual_network" "myVN" {
  name                = var.virtual_network_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = ["${var.address_space}"]
  dns_servers         = []
}

resource "azurerm_subnet" "subnet1" {
  name                 = var.subnet1
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.myVN.name
  address_prefixes     = ["${var.add_prefix1}"]
}

resource "azurerm_subnet" "subnet2" {
  name                 = var.subnet2
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.myVN.name
  address_prefixes     = ["${var.add_prefix2}"]
}

resource "azurerm_subnet" "subnet3" {
  name                 = var.subnet3
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.myVN.name
  address_prefixes     = ["${var.add_prefix3}"]
}

resource "azurerm_subnet_network_security_group_association" "example" {
  subnet_id                 = azurerm_subnet.subnet1.id
  network_security_group_id = azurerm_network_security_group.NSG.id
}

resource "azurerm_network_interface" "myNI" {
  name                = var.network_interface_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = var.ipconf_name
    subnet_id                     = azurerm_subnet.subnet1.id
    private_ip_address_allocation = var.private_ip_address_alloc
  }

}