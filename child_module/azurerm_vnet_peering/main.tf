resource "azurerm_virtual_network_peering" "vnetpeering" {
  for_each = var.vnetpeering
  name                      =  each.value.name
  resource_group_name       = each.value.rgname
    virtual_network_name      = each.value.vnet
  remote_virtual_network_id = each.value.vnetid
}