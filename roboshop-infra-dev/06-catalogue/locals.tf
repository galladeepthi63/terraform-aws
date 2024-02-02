locals {
  ec2_name="${var.projectname}-${var.environment}"
  current_time = formatdate("YYYY-MM-DD-hh-mm", timestamp())
  
  
}