resource "azurerm_resource_group" "resource_group" {
  location = var.location
  name = "${var.base_name}-rg"
}