resource "aws_instance" "name" {
    ami= var.ami_name
    instance_type =var.instance_type
    tags = var.ec2_instancename
}