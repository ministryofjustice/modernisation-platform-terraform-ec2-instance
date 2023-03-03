terraform {
  required_providers {
    aws = {
      version               = "~> 4.9"
      source                = "hashicorp/aws"
      configuration_aliases = [aws.core-vpc]
    }
    cloudinit = {
      version = "~> 2.2.0"
      source  = "hashicorp/cloudinit"
    }

    random = {
      source  = "hashicorp/random"
    }

    time = {
      version = "> 0.9.0"
      source  = "hashicorp/time"
    }
  }
  required_version = ">= 1.1.7"
}
