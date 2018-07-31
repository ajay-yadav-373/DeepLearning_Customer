resource "azurerm_lb" "lbone" {
  name                = "lbone"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.deep-security.name}"

  frontend_ip_configuration {
    name                 = "publicipforlbone"
    public_ip_address_id = "${azurerm_public_ip.pipforlbone.id}"
  }
}
resource "azurerm_lb" "lbtwo" {
  name                = "lbtwo"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.deep-security.name}"

  frontend_ip_configuration {
    name                 = "publicipforlbtwo"
    public_ip_address_id = "${azurerm_public_ip.pipforlbtwo.id}"
  }
}
resource "azurerm_lb" "lbthree" {
  name                = "lbthree"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.deep-security.name}"

  frontend_ip_configuration {
    name                 = "publicipforlbthree"
    public_ip_address_id = "${azurerm_public_ip.pipforlbthree.id}"
  }
}
