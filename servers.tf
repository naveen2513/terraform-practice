data "aws_ami" "centos" {
  owners = ["973714476881"]

}
output "aws_ami" {
  value = "data.aws_ami.centos.image_id"
}

variable "instance_type" {
  default = "t3.micro"
}

  resource "aws_instance" "frontend" {
  ami           = data.aws_ami.centos.image_id
  instance_type = var.instance_type

  tags = {
    Name = "frontend"
  }
}
