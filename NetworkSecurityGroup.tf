resource "azurerm_network_security_group" "nsg-subnet1"  {
  name     = "${var.resource_group_name}-nsg-subnet1"
  location = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.pcloudbaseind1.name}"
security_rule {
        name                       = "RemoteAccess"
        direction                  = "Inbound"
	priority		   = 101
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "3389"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }
}
resource "azurerm_network_security_group" "nsg-subnet2"  {
  name     = "${var.resource_group_name}-nsg-subnet2"
  location = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.pcloudbaseind1.name}"
security_rule {
        name                       = "RemoteAccess"
        direction                  = "Inbound"
        access                     = "Allow"
	priority                   = 101
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "3389"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }
security_rule {
        name                       = "WinRM"
        direction                  = "Inbound"
	priority                   = 103
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "5985"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }

security_rule {
        name                       = "HTTP"
        direction                  = "Inbound"
        priority                   = 104
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }

security_rule {
        name                       = "HTTPS"
        direction                  = "Inbound"
        priority                   = 105
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }


}

resource "azurerm_network_security_group" "nsg-subnet3"  {
  name     = "${var.resource_group_name}-nsg-subnet3"
  location = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.pcloudbaseind1.name}"

security_rule {
        name                       = "RemoteAccess"
        priority                   = 1001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "389"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }
}
