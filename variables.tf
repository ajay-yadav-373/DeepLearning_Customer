variable subscription_id {}
variable tenant_id {}
variable client_id {}
variable client_secret {}


/* Configure Azure Provider and declare all the Variables that will be used in Terraform configurations */
provider "azurerm" {
  subscription_id 	= "${var.subscription_id}"
  client_id 		= "${var.client_id}"
  client_secret 	= "${var.client_secret}"
  tenant_id 		= "${var.tenant_id}"
}



variable "location" {
  description = "The default Azure region for the resource provisioning"
}

variable "resource_group_name" {
  description = "Resource group name that will contain various resources"
}

variable "resource_group_name_2" {
  description = "Resource group name that will contain various resources"
}

variable "vnet_cidr" {
  description = "CIDR block for Virtual Network"
}

variable "subnet1_cidr" {
  description = "CIDR block for Subnet within a Virtual Network"
}

variable "subnet2_cidr" {
  description = "CIDR block for Subnet within a Virtual Network"
}

variable "subnet3_cidr" {
  description = "CIDR block for Subnet within a Virtual Network"
}

variable "admin_username" {
  description = "Enter Username For Machine"
}

variable "admin_password" {
  description = "Enter User Password For Machine"
}


variable "computer_name" {
  description = "Enter Name For Machine"
}


variable "application_server1_name" {
  description = "Enter application 1 name"
}
variable "application_server2_name" {
  description = "Enter application 2 name"
}

variable "DB1-name" {
  description = "Enter database 1 name"
}


variable "DB2-name" {
  description = "Enter database 1 name"
}
