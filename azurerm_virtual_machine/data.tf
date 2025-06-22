data "azurerm_subnet" "example" {
  name                 = "tushar-sb"
  virtual_network_name = "tushar-vn"
  resource_group_name  = "tushar-rg"
}

data "azurerm_network_security_group" "example" {
  name                = "tushar-nsg"
  resource_group_name = "tushar-rg"
}

data "azurerm_public_ip" "example" {
  name                = "tushar-pip"
  resource_group_name = "tushar-rg"
}
