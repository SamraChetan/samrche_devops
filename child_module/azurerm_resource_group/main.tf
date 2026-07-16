resource "azurerm_resource_group" "rg_name"{
    for_each = var.rg_name1
    name = each.value.name
    location = each.value.location
}
variable "rg_name1" {}