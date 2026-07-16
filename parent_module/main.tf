module "azurerm_resource_group" {
  source  = "../child_module/Azurerm_resource_group"
  rg_name = var.rg_name
}
# module "azurerm_storage_account" {
#     source = "../child_module/azurerm_storage_account"
#     depends_on = [ module.azurerm_resource_group ]
#     stg = var.stg
# }
module "azurerm_virtual_network"{
    source = "../child_module/azurerm_virtual_network"
    depends_on = [ module.azurerm_resource_group ]
    vnet = var.vnet
}
module "azurerm_subnet" {
    source = "../child_module/azurerm_subnet"
    depends_on = [ module.azurerm_virtual_network ]
    subnet = var.subnet
}