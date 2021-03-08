# this is an place where you provide the terraform aws plugin version
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.12.0"
    }
  }

 required_version  = ">0.12.0"
    backend "s3" {
    bucket = "terraformbacked"
    key    = "multibranch/ec2_backend.tf"
    region = "us-east-2"
  }
}
