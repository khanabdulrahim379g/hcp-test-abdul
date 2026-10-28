resource "azurerm_resource_group" "rg" {
  name = "testrg"
  location = "eastus"
  tags ={
    env="test"
    owner="abddulhcptest"
  }
}

resource "azurerm_virtual_network" "vnet" {
  name="testvnet"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  address_space = [ "10.1.0.0/16" ]
}