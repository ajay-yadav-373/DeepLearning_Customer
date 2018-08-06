resource "azurerm_lb" "lbone" {
  name                = "lbone"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.deep-security.name}"

  frontend_ip_configuration {
    name                 = "LoadBalancerFrontEnd"
    public_ip_address_id = "${azurerm_public_ip.pipforlbone.id}"
  }
}

resource "azurerm_lb_backend_address_pool" "backend_pool1" {
  resource_group_name = "${azurerm_resource_group.deep-security.name}"
  loadbalancer_id     = "${azurerm_lb.lbone.id}"
  name                = "BackendPool1"
}



resource "azurerm_lb_nat_rule" "tcp" {
  resource_group_name            = "${azurerm_resource_group.deep-security.name}"
  loadbalancer_id                = "${azurerm_lb.lbone.id}"
  name                           = "RDP-VM-${count.index}"
  protocol                       = "tcp"
  frontend_port                  = "5000${count.index + 1}"
  backend_port                   = "3389${count.index + 1}"
  frontend_ip_configuration_name = "LoadBalancerFrontEnd"
  count				 = "4"
}



resource "azurerm_lb_rule" "lb_rule1" {
  resource_group_name            = "${azurerm_resource_group.deep-security.name}"
  loadbalancer_id                = "${azurerm_lb.lbone.id}"
  name                           = "LBRule1"
  protocol                       = "tcp"
  frontend_port                  = 80
  backend_port                   = 80
  frontend_ip_configuration_name = "LoadBalancerFrontEnd"
  enable_floating_ip             = false
  backend_address_pool_id        = "${azurerm_lb_backend_address_pool.backend_pool1.id}"
  idle_timeout_in_minutes        = 5
  probe_id                       = "${azurerm_lb_probe.lb_probe1.id}"
  depends_on                     = ["azurerm_lb_probe.lb_probe1"]
}



resource "azurerm_lb_probe" "lb_probe1" {
  resource_group_name = "${azurerm_resource_group.deep-security.name}"
  loadbalancer_id     = "${azurerm_lb.lbone.id}"
  name                = "tcpProbe1"
  protocol            = "tcp"
  port                = 80
  interval_in_seconds = 5
  number_of_probes    = 2
}

