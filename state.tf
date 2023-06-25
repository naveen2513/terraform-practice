terraform {
  backend "s3" {
    bucket = "terraform-2513"
    key    = "practice/dev/terraform.tfstate"
    region = "us-east-1"
  }
}
