resource "azurerm_virtual_machine" "AppServer1" {
  name                  = "${var.resource_group_name_2}-App1"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.deep-security.name}"
  network_interface_ids = ["${azurerm_network_interface.app1.id}"]
  vm_size               = "Standard_B1s"

storage_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2012-R2-Datacenter"
    version   = "latest"
  }
storage_os_disk {
    name          = "App1_OS"
    vhd_uri       = "${azurerm_storage_account.storage.primary_blob_endpoint}${azurerm_storage_container.container.name}/App1_OS.vhd"
    caching       = "ReadWrite"
    create_option = "FromImage"
  }
  storage_data_disk {
    name          = "App1_data"
    vhd_uri       = "${azurerm_storage_account.storage.primary_blob_endpoint}${azurerm_storage_container.container.name}/App1_data.vhd"
    disk_size_gb  = "10"
    create_option = "Empty"
    lun           = 0
  }
os_profile {
    computer_name  = "${var.application_server1_name}"
    admin_username = "${var.admin_username}"
    admin_password = "${var.admin_password}"
  }
os_profile_windows_config {
    enable_automatic_upgrades = false
    provision_vm_agent = true
}
}

/*
resource "azurerm_virtual_machine" "AppServer2" {
  name                  = "${var.resource_group_name_2}-App2"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.deep-security.name}"
  network_interface_ids = ["${azurerm_network_interface.app2.id}"]
  vm_size               = "Standard_B1s"

storage_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2012-R2-Datacenter"
    version   = "latest"
  }
storage_os_disk {
    name          = "App2_OS"
    vhd_uri       = "${azurerm_storage_account.storage.primary_blob_endpoint}${azurerm_storage_container.container.name}/App2_OS.vhd"
    caching       = "ReadWrite"
    create_option = "FromImage"
  }
  storage_data_disk {
    name          = "App2_data"
    vhd_uri       = "${azurerm_storage_account.storage.primary_blob_endpoint}${azurerm_storage_container.container.name}/App2_data.vhd"
    disk_size_gb  = "10"
    create_option = "Empty"
    lun           = 0
  }
os_profile {
    computer_name  = "${var.application_server2_name}"
    admin_username = "${var.admin_username}"
    admin_password = "${var.admin_password}"
  }
os_profile_windows_config {
    enable_automatic_upgrades = false
    provision_vm_agent = true
}
} */
