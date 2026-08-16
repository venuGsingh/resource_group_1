variable "rgs_venu"{}


resource "azurerm_resource_group" "venu" {
  for_each = var.rgs_venu
  name     = each.value.name
  location = each.value.location
}