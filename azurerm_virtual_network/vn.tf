resource "azurerm_network_security_group" "example" {
  name                = var.nsg-name
  location            = var.location
  resource_group_name = var.rg-name
}
resource "azurerm_network_security_rule" "allow_http" {
  name                        = "tushar-nsg"
  priority                    = 1001
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = var.rg-name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "allow_ssh" {
  name                        = "Allow-SSH"
  priority                    = 1000
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = var.rg-name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "allow_internet_outbound" {
  name                        = "Allow-Internet-Outbound"
  priority                    = 100
  direction                   = "Outbound"
  access                      = "Allow"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "Internet"
  resource_group_name         = var.rg-name
  network_security_group_name = azurerm_network_security_group.example.name
}




resource "azurerm_virtual_network" "example" {
  name                = var.vn-name
  location            = var.location
  resource_group_name = var.rg-name
  address_space       = ["10.0.0.0/16"]
  

  
}

