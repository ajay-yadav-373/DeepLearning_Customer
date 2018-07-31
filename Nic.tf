resource "azurerm_network_interface" "solarwind" {
  name                  = "${var.resource_group_name}-nic"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.pcloudbaseind1.name}"

  ip_configuration {
    name                          = "${var.resource_group_name}-ipconfig"
    subnet_id                     = "${azurerm_subnet.subnet_2.id}"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id  = "${azurerm_public_ip.pipsolarawindagent.id}"
  }
}

resource "azurerm_network_interface" "app1" {
  name                  = "${var.resource_group_name}-app1"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.deep-security.name}"

  ip_configuration {
    name                          = "${var.resource_group_name}-ipconfig-app1"
    subnet_id                     = "${azurerm_subnet.subnet_2.id}"
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_network_interface" "app2" {
  name                  = "${var.resource_group_name}-app2"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.deep-security.name}"

  ip_configuration {
    name                          = "${var.resource_group_name}-ipconfig-app2"
    subnet_id                     = "${azurerm_subnet.subnet_2.id}"
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_network_interface" "db1" {
  name                  = "${var.resource_group_name}-db1"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.deep-security.name}"

  ip_configuration {
    name                          = "${var.resource_group_name}-ipconfig-db1"
    subnet_id                     = "${azurerm_subnet.subnet_3.id}"
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_network_interface" "db2" {
  name                  = "${var.resource_group_name}-db2"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.deep-security.name}"

  ip_configuration {
    name                          = "${var.resource_group_name}-ipconfig-db2"
    subnet_id                     = "${azurerm_subnet.subnet_3.id}"
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_network_interface" "lbone" {
  name                  = "lbone"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.deep-security.name}"

  ip_configuration {
    name                          = "lbone"
    subnet_id                     = "${azurerm_subnet.subnet_3.id}"
    private_ip_address_allocation = "Dynamic"
  }
}
resource "azurerm_network_interface" "lbtwo" {
  name                  = "lbtwo"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.deep-security.name}"

  ip_configuration {
    name                          = "lbtwo"
    subnet_id                     = "${azurerm_subnet.subnet_3.id}"
    private_ip_address_allocation = "Dynamic"
  }
}
resource "azurerm_network_interface" "lbthree" {
  name                  = "lbthree"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.deep-security.name}"

  ip_configuration {
    name                          = "lbthree"
    subnet_id                     = "${azurerm_subnet.subnet_3.id}"
    private_ip_address_allocation = "Dynamic"
  }
}
