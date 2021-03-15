terraform {
  backend "s3" {
    encrypt = true
    bucket  = "terraform-persistence"
    key     = "terraform-emr-pyspark.tfstate"
    region  = var.region
  }
}

provider "aws" {
  version    = "~> 1.0"
  region     = "${var.region}"
}