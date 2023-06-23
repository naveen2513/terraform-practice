resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"


  tags = {
    Name = "frontend"
  }
}

data "aws_security_group" "allow-all" {
  name = "allow-all"
}
output "allow-all" {
  value = data.aws_security_group.allow-all.id
}