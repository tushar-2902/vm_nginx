module "rg" {
  source = "../azurerm_resorce"
  rg-name = "tushar-rg"
  location = "west us 3"
}

module "vn" {
    depends_on = [ module.rg ]
  source = "../azurerm_virtual_network"
  nsg-name = "tushar-nsg"
  location = "west us 3"
  rg-name = "tushar-rg"
  vn-name = "tushar-vn"

}

module "sb" {
    depends_on = [ module.vn ]
  source = "../azurerm_subnet"
  sb-name = "tushar-sb"
  rg-name = "tushar-rg"
  vn-name = "tushar-vn"
}

module "pip" {
    depends_on = [ module.rg ]
  source = "../azurerm_public_ip"
  pip-name = "tushar-pip"
  rg-name = "tushar-rg"
  location = "west us 3"
}

module "vm" {
    depends_on = [ module.sb,module.pip ]
  source = "../azurerm_virtual_machine"
  nic-name = "tushar-nic"
  location = "west us 3"
  rg-name = "tushar-rg"
  vm-name = "tushar-vm"
}