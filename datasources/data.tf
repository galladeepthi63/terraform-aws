data "aws_ami" "web" {

owners = ["973714476881"]
 filter {
    name   = "name"
    values = ["Centos-8-DevOps-*"]
  }
    filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
   filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  
}
data "aws_vpc" "vpc_info" {
    default = true
  
}