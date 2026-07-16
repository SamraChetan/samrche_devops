resource "azurerm_bastion_host" "bastion" {
    for_each  = var.bastion
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.rgname

  ip_configuration {
    name                 = each.value.name1
    subnet_id            = each.value.subnet_id
    public_ip_address_id = each.value.public_ip_address_id
}
}