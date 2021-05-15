provider "aws" {
  region = "us-east-2"
  alias  = "master"
}


provider "aws" {
  region = "us-east-1"
  alias  = "slave"
}
