resource "azurerm_network_inerface" nic" {
    for_each = var.nics
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group_name
    ip_configuration {
        name = "Internal"
        subnet_id = each.value.subnet_id
        public_ip_address_id = each.value.pip_id
        private_ip_address_allocation = "Dynamic"
      
    }
}
variable "nics"{}