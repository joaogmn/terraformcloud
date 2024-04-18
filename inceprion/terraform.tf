 terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.74.0"
     
    }
  }
    cloud {
    organization = "Inceprion-tfc"

    workspaces {
      name = "Inceprion-app-westus3-dev"
    }
  }
 }

provider "azurerm" {

  features {
  }
}

resource "azurerm_resource_group" "validation" {
  
  name     = var.resource_group_name
  location = var.resource_group_location
   tags = {
     
     "environment" = var.environment
     "project"     = var.project 
     "prefix"      = var.prefix 
   
   }
}


resource "azurerm_network_security_group" "validation" {
  name                = var.nsg_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  }
resource "azurerm_virtual_network" "validation" {

  name                = var.vnet_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  address_space       = ["10.2.0.0/16"]
  dns_servers         = ["8.8.8.8", "4.4.2.2"]
  
  subnet  {
    name               = "sub-dev-darktrace-02"
    security_group     = azurerm_network_security_group.validation.id
    address_prefix     = "10.2.0.0/24"
  }

  tags = {
  
    project     = "azlz"
    department  = "IT"
  }
  
}
