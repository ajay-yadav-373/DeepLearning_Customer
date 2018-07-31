resource "azurerm_public_ip" "pipsolarawindagent" {
  name                         = "${var.resource_group_name}-ip"
  location                     = "${var.location}"
  public_ip_address_allocation = "static"
  domain_name_label            =  "${var.resource_group_name}-ip"
  resource_group_name   = "${azurerm_resource_group.pcloudbaseind1.name}"
}
resource "azurerm_public_ip" "pipforlbone" {
  name                         = "publicipforlbone"
  location                     = "${var.location}"
  public_ip_address_allocation = "static"
  resource_group_name   = "${azurerm_resource_group.deep-security.name}"
}
resource "azurerm_public_ip" "pipforlbtwo" {
  name                         = "publicipforlbtwo"
  location                     = "${var.location}"
  public_ip_address_allocation = "static"
  resource_group_name   = "${azurerm_resource_group.deep-security.name}"
}
resource "azurerm_public_ip" "pipforlbthree" {
  name                         = "publicipforlbthree"
  location                     = "${var.location}"
  public_ip_address_allocation = "static"
  resource_group_name   = "${azurerm_resource_group.deep-security.name}"
}
