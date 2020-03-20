variable "assume_role" {}
variable "bucket_prefix" {
  type    = string
  default = "prefix"
}

terraform {
  required_version = ">= 0.12.0"
  backend "s3" {
    region  = "ap-northeast-1"
    encrypt = true

    bucket   = "terraform-bucket-fortfstate"
    key      = "terraform.tfstate"
  }
}

provider "aws" {
  region = "ap-northeast-1"
#   assume_role {
#     role_arn = var.assume_role
#   }
}

module "network" {
  source = "./modules/network"

  # variables
  base_name = var.base_name
}
