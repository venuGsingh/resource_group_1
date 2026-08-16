

resource "azurerm_resource_group" "resourcerg" {
  for_each = var.resource_rg
  name     =each.value.name
  location = each.value.location
}