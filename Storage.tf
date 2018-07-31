resource "azurerm_storage_account" "storage" {
  name                = "storageforhld"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.pcloudbaseind1.name}"
  account_tier          = "Standard"
  account_replication_type = "GRS"
 }
resource "azurerm_storage_container" "container" {
  name                  =  "${var.resource_group_name}-container"
  resource_group_name = "${azurerm_resource_group.pcloudbaseind1.name}"
  storage_account_name  = "${azurerm_storage_account.storage.name}"
  container_access_type = "private"
}
