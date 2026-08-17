rgs_venu = {
  venu1 = {
    name     = "venu_rg_modul"
    location = "centralindia"
  }
  venu2 = {
    name     = "venu1_rg_module"
    location = "centralindia"
  }

}
VNetm = {

  vnet1 = {
    name                = "venu_vnet"
    location            = "centralindia"
    resource_group_name = "venu_rg_module"
    address_space       = ["10.0.0.0/16"]
  }
}
subnet_v = {
  subnet1 = {
    name                 = "subnet1"
    address_prefixes     = ["10.0.1.0/24"]
    resource_group_name  = "venu_rg_module"
    virtual_network_name = "venu_vnet"
  }
  subnet2 = {
    name                 = "subnet2"
    address_prefixes     = ["10.0.2.0/24"]
    resource_group_name  = "venu_rg_module"
    virtual_network_name = "venu_vnet"

  }
  subnet3 = {
    name                 = "subnet3"
    address_prefixes     = ["10.0.3.0/24"]
    resource_group_name  = "venu_rg_module"
    virtual_network_name = "venu_vnet"
  }
  subnet4 = {
    name                 = "AzureBastionSubnet"
    address_prefixes     = ["10.0.4.0/24"]
    resource_group_name  = "venu_rg_module"
    virtual_network_name = "venu_vnet"
  }
}

public_ip = {

  public_ip1= {
  name                = "bastionpip"
  location            = "central india"
  resource_group_name = "venu_rg_module"
  allocation_method   = "Static"
  sku                 = "Standard"
  }
}
# Bastion_host = {
#   bastion1 = {
#     name                = "Bastion_host_dev"
#     location            = "central india"
#     resource_group_name = "venu_rg_module"

#     ip_configuration = {
#       name                 = "bastionpip"
#       subnet_id            = "AzureBastionSubnet"
#       public_ip_address_id =azurerm_public_ip.public_ip["public_ip1"].id
#     }
#   }
# }

