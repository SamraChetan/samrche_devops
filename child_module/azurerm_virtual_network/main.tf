resource "azurerm_virtual_network" "vnet"{
    for_each =var.vnet
    name = each.value.name
    location = each.value.location
  address_space = each.value.address
  resource_group_name = each.value.rgname
}
variable "vnet"{}