terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.45.0"
    }
    aws = {
        source = "hashicorp/aws"
        version = "4.56.0"
    }
  }
}

provider "azurerm" {
    features {

    }
  # Configuration options
}

provider "aws" {
    region = "us-east-1"
}

resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "West Europe"
  tags = {
    source = "terraform"
  }
}

resource "aws_s3_bucket" "b" {
    bucket = "terraform-maintf"
}
