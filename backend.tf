terraform {
  required_version = ">=0.14"
  backend "s3" {
    bucket = "terraformbacked"
    key    = "cloudexample"
    region = "us-east-2"

  }
}
