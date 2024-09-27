terraform {


 backend "azurerm" {
    resource_group_name  = "szecsikr" 
    storage_account_name = "szecsikr"                
    container_name       = "tfstate"               
    key                  = "szecsikr-cluster.terraform.tfstate"
    subscription_id = "5610ba8d-b1da-49de-87f9-b014a6efe236"
    use_msi = true
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

}

provider "azurerm" {
  #resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
  subscription_id = "5610ba8d-b1da-49de-87f9-b014a6efe236"
  use_msi = true
}
