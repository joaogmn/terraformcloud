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
