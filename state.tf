terraform {
  backend "s3" {
    bucket = "terraform-2513"
    key = "project/dev/terraform.tfstate"
    region = "us-east-1"
  }
}