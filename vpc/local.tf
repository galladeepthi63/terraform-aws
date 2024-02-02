locals {
  name="${var.projectname}-${var.environment}"
  az_name=slice(data.aws_availability_zones.azs.names,0,2)
}