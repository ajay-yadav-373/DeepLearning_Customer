resource "azurerm_virtual_network" "vnet" {
  name                  = "${var.resource_group_name}-vnet"
  address_space         = ["${var.vnet_cidr}"]
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.pcloudbaseind1.name}"
}
