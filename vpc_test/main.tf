module "roboshop" {
  source= "../vpc"
  projectname = var.projectname
  environment = var.environment
  comman_tags = var.comman_tags
  vpc_tags = var.vpc_tags
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  database_subnet_cidr = var.database_subnet_cidr
  is_peering_required = var.is_peering_requried
 

  
}