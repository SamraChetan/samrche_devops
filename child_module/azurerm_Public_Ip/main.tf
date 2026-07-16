resource "azurerm_public_ip" "publicip" {
  name                = "publicip"
  location            = "Central India"
  resource_group_name = "sitarg"
  allocation_method   = "Static"
  sku                 = "Standard"
}