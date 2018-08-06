resource "azurerm_availability_set" "aset1" {
 name                         = "${var.resource_group_name_2}-aset1"
 location                     = "${var.location}"
 resource_group_name          = "${azurerm_resource_group.deep-security.name}"
 platform_fault_domain_count  = 2
 platform_update_domain_count = 2
 managed                      = false
}


