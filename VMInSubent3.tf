resource "azurerm_virtual_machine" "DBServer1" {
  name                  = "${var.resource_group_name_2}-DB1"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.deep-security.name}"
  availability_set_id   = "${azurerm_availability_set.aset1.id}"
  network_interface_ids = ["${azurerm_network_interface.db1.id}"]
  vm_size               = "Standard_B1s"

storage_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
storage_os_disk {
    name          = "DB1_OS"
    vhd_uri       = "${azurerm_storage_account.storage.primary_blob_endpoint}${azurerm_storage_container.container.name}/DB1_OS.vhd"
    caching       = "ReadWrite"
    create_option = "FromImage"
  }
  storage_data_disk {
    name          = "DB1_data"
    vhd_uri       = "${azurerm_storage_account.storage.primary_blob_endpoint}${azurerm_storage_container.container.name}/DB1_data.vhd"
    disk_size_gb  = "10"
    create_option = "Empty"
    lun           = 0
  }
os_profile {
    computer_name  = "${var.DB1-name}"
    admin_username = "${var.admin_username}"
    admin_password = "${var.admin_password}"
  }
os_profile_windows_config {
    enable_automatic_upgrades = false
    provision_vm_agent = true
}
}


resource "azurerm_virtual_machine" "DBServer2" {
  name                  = "${var.resource_group_name_2}-DB2"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.deep-security.name}"
  availability_set_id   = "${azurerm_availability_set.aset1.id}"
  network_interface_ids = ["${azurerm_network_interface.db2.id}"]
  vm_size               = "Standard_B1s"

storage_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
storage_os_disk {
    name          = "DB2_OS"
    vhd_uri       = "${azurerm_storage_account.storage.primary_blob_endpoint}${azurerm_storage_container.container.name}/DB2_OS.vhd"
    caching       = "ReadWrite"
    create_option = "FromImage"
  }
  storage_data_disk {
    name          = "DB1_data"
    vhd_uri       = "${azurerm_storage_account.storage.primary_blob_endpoint}${azurerm_storage_container.container.name}/DB2_data.vhd"
    disk_size_gb  = "10"
    create_option = "Empty"
    lun           = 0
  }
os_profile {
    computer_name  = "${var.DB2-name}"
    admin_username = "${var.admin_username}"
    admin_password = "${var.admin_password}"
  }
os_profile_windows_config {
    enable_automatic_upgrades = false
    provision_vm_agent = true
}
}
