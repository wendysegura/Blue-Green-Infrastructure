variable "infrastructure_version" {
  default = "1"
}

provider "aws" {
  region = "us-west-2"
}

terraform {
  backend "s3" {
    encrypt = true
    bucket  = "bluegreen-terraform"
    region  = "us-west-2"
    key     = "v1"
  }
}
