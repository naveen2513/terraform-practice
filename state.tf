terraform {
  backend "s3" {
    bucket = "terraform-2513"
    key = "roboshop/dev/terraform.tfstate"
    region = "us-east-1"
  }
}