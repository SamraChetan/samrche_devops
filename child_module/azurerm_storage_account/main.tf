resource "azurerm_storage_account" "stg"{
    for_each = var.stg
    name = each.value.name
    location= each.value.location
  account_replication_type = each.value.reptype
  account_tier = each.value.tier
  resource_group_name = each.value.rgname
  }