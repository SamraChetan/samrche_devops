resource "azurerm_virtual_machine" "vm" {
  for_each = var.virtualmachine
  name                  = each.value.name
  location              = each.value.location
  resource_group_name   = each.value.rgname
  network_interface_ids = [each.value.nii]
  vm_size               = each.value.vm_size

  
  storage_image_reference {
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.sku
    version   = each.value.version
  }
  storage_os_disk {
    name              = each.value.name
    caching           = each.value.caching
    create_option     = each.value.create_option
    managed_disk_type = each.value.managed_disk_type
  }
  os_profile {
    computer_name  = each.value.computer_name
    admin_username = each.value.admin_username
    admin_password = each.value.admin_password
  }
  os_profile_linux_config {
    disable_password_authentication = each.value.disable_password_authentication
  }
  tags = {
    environment = each.value.environment
  }
}