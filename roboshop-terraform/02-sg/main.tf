module "vpn" {
    source = "../../terraform-aws-security-group"
    projectname = var.projectname
    environment= var.environment
    vpc_id= data.aws_vpc.default.id
    sg_name="vpn"
    sg_description = "SG for vpn"
    #sg_ingress_rules=var.mongodb_sg_ingress_rules

  
}
module "mongodb" {
    source = "../../terraform-aws-security-group"
    projectname = var.projectname
    environment= var.environment
    vpc_id= data.aws_ssm_parameter.vpc_id.value
    sg_name="mongodb"
    sg_description = "SG for mongodb"
    #sg_ingress_rules=var.mongodb_sg_ingress_rules

  
}
module "catalogue" {
    source = "../../terraform-aws-security-group"
    projectname = var.projectname
    environment= var.environment
    vpc_id= data.aws_ssm_parameter.vpc_id.value
    sg_name="catalogue"
    sg_description = "SG for catalogue"
    #sg_ingress_rules=var.mongodb_sg_ingress_rules

  
}
module "user" {
    source = "../../terraform-aws-security-group"
    projectname = var.projectname
    environment= var.environment
    vpc_id= data.aws_ssm_parameter.vpc_id.value
    sg_name="user"
    sg_description = "SG for user"
    #sg_ingress_rules=var.mongodb_sg_ingress_rules

  
}
module "cart" {
    source = "../../terraform-aws-security-group"
    projectname = var.projectname
    environment= var.environment
    vpc_id= data.aws_ssm_parameter.vpc_id.value
    sg_name="cart"
    sg_description = "SG for cart"
    #sg_ingress_rules=var.mongodb_sg_ingress_rules

  
}
module "redis" {
    source = "../../terraform-aws-security-group"
    projectname = var.projectname
    environment= var.environment
    vpc_id= data.aws_ssm_parameter.vpc_id.value
    sg_name="redis"
    sg_description = "SG for redis"
    #sg_ingress_rules=var.mongodb_sg_ingress_rules

  
}

#openvpn
resource "aws_security_group_rule" "vpn_home" {
  security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 0
  to_port                  = 65535
  protocol                 = "-1"
  cidr_blocks = ["0.0.0.0/0"] #ideally your home public IP address, but it frequently changes
}

#mongodb accepting connections from vpn instance
resource "aws_security_group_rule" "mongodb_vpn" {
  source_security_group_id = module.vpn.sg_id
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = module.mongodb.sg_id
}
#mongodb accepting connections from catalogue instance
resource "aws_security_group_rule" "mongodb_catalogue" {
  source_security_group_id = module.catalogue.sg_id
  type              = "ingress"
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
  security_group_id = module.mongodb.sg_id
}
#mongodb accepting connections from user instance
resource "aws_security_group_rule" "mongodb_user" {
  source_security_group_id = module.user.sg_id
  type              = "ingress"
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
  security_group_id = module.mongodb.sg_id
}

resource "aws_security_group_rule" "redis_user" {
  source_security_group_id = module.user.sg_id
  type              = "ingress"
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
  security_group_id = module.redis.sg_id
}
resource "aws_security_group_rule" "redis_cart" {
  source_security_group_id = module.cart.sg_id
  type              = "ingress"
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
  security_group_id = module.redis.sg_id
}