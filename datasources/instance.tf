resource "aws_instance" "name" {
    ami= data.aws_ami.web.id
    instance_type = "t2.micro"
  
}