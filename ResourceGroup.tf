resource "azurerm_resource_group" "pcloudbaseind1" {
  name          = "${var.resource_group_name}"
  location      = "${var.location}"
}

resource "azurerm_resource_group" "deep-security" {
  name          = "${var.resource_group_name_2}"
  location      = "${var.location}"
}

