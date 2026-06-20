terraform {
  required_version = ">= 1.14.8"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  cloud {

    organization = "terrafrom-course"

    workspaces {
      name = "local_project"
    }
  }
}

provider "azurerm" {
  features {}
}