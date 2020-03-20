terraform {
  required_version = "0.12.24"
}

variable "assume_role" { 
}

provider "aws" {
  region     = "ap-northeast-1"
  assume_role {
    role_arn     = var.assume_role
  }
}

module "network" {
  source = "./modules/network"
}
