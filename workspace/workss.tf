resource "aws_instance" "name" {
    ami = var.ami_name
    instance_type = lookup(var.instance_type,terraform.workspace)
    tags = {
        name= lookup(var.instance_name,terraform.workspace)
    }
  
}