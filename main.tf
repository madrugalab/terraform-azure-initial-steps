provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "my_resourcegroup" {
  name     = "resource_group_exemplo"
  location = "Brazil South"
}

resource "azurerm_application_insights" "my_applicationinsights" {
  name                = "myapplicationinsights"
  resource_group_name = azurerm_resource_group.my_resourcegroup.name
  location            = azurerm_resource_group.my_resourcegroup.location
  application_type    = "web"
}
