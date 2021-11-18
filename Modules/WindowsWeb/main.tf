# resource "azurerm_resource_group" "myRG" {
#   name      = var.resource_group_name
#   location  = var.location
# }

resource "azurerm_windows_virtual_machine" "WindowsWeb" {
  name                = var.virtual_machine_name
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.machine_size
  admin_username      = var.admin_name
  admin_password      = var.admin_pass
  network_interface_ids = [
    var.network_interface_id,
  ]

  os_disk {
    caching              = var.caching
    storage_account_type = var.storage_account_type
  }

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.virtual_machine_version
  }
}

