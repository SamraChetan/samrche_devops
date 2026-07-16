terraform {
    required_providers {
        azurerm ={
            source = "hashicorp/azurerm"
            version = "4.73.0"
        }
    }
    # backend "azurerm" {
    #     resource_group_name = "rg-chor"
    #     storage_account_name = "chorstorage"
    #     container_name = "tfstate"
    #     key = "resource.terraform.tfstate"

    }
#  }
provider "azurerm"{
    features {
      
    }
}