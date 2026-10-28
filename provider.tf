terraform {
  required_providers {
  azurerm = {
      source = "hashicorp/azurerm"
      version = "5.0.0"
    }
  }
  required_version = ">= 1.2.0, < 1.17.1"

  cloud {
    organization = "cloudwok"
    workspaces {
      name = "hcp-test-abdul"
    }
  }
}


provider "azurerm" {
    features {
      
    }

    subscription_id = "3abf5f52-7f4a-4970-9417-82bc8f6b5442"
  
}


