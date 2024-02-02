output "aws_ami" {
  value = data.aws_ami.web
}

output "aws_vpc" {
    value = data.aws_vpc.vpc_info
  
}
