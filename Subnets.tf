 resource "azurerm_subnet" "subnet_1" {
  name                  = "${var.resource_group_name}-subnet1"
  address_prefix        = "${var.subnet1_cidr}"
  virtual_network_name  = "${azurerm_virtual_network.vnet.name}"
  resource_group_name   = "${azurerm_resource_group.pcloudbaseind1.name}"
  network_security_group_id = "${azurerm_network_security_group.nsg-subnet1.id}"
}

resource "azurerm_subnet" "subnet_2" {
  name                  = "${var.resource_group_name}-subnet2"
  address_prefix        = "${var.subnet2_cidr}"
  virtual_network_name  = "${azurerm_virtual_network.vnet.name}"
  resource_group_name   = "${azurerm_resource_group.pcloudbaseind1.name}"
  network_security_group_id = "${azurerm_network_security_group.nsg-subnet2.id}"
}

resource "azurerm_subnet" "subnet_3" {
  name                  = "${var.resource_group_name}-subnet3"
  address_prefix        = "${var.subnet3_cidr}"
  virtual_network_name  = "${azurerm_virtual_network.vnet.name}"
  resource_group_name   = "${azurerm_resource_group.pcloudbaseind1.name}"
  network_security_group_id = "${azurerm_network_security_group.nsg-subnet3.id}"
}
