data "aws_ami" "centos8" {
    owners = ["973714476881"]
    most_recent      = true

    filter {
        name   = "name"
        values = ["Centos-8-DevOps-Practice"]
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
# data "aws_ssm_parameter" "mongodb_sg_id" {
#   name = "/${var.projectname}/${var.environment}/mongodb_sg_id"
# }

# data "aws_ssm_parameter" "database_subnet_ids" {
#   name = "/${var.projectname}/${var.environment}/database_subnet_ids"
# }
data "aws_ssm_parameter" "mongodb_sg_id" {
  name="/${var.projectname}/${var.environment}/mongodb_sg_id"
  
}
data "aws_ssm_parameter" "database_subnet_ids" {
  name="/${var.projectname}/${var.environment}/database_subnet_ids"
  
}