variable "comman_tags" {
    default = {
        projectname="roboshop"
        environment="dev"
        terraform="true"
    }

  
}
variable "environment" {
    default = "dev"
  
}
variable "projectname" {
    default = "roboshop"
  
}
variable "sg_tags" {
    default = {}
  
}
# variable "sg_name" {
#     #type=string
#     #default="mongodb"
  
# }
# # variable "vpc_id" {
# #     default = {}
  
# # }
# variable "sg_description" {
#     #default ="SG for mongodb"
  
# }
# variable "mongodb_sg_ingress_rules" {
#   default = [
#     {
#       description = "Allow port 80"
#       from_port   = 80 # 0 means all ports
#       to_port     = 80
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#     },
#     {
#       description = "Allow port 443"
#       from_port   = 443 # 0 means all ports
#       to_port     = 443
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#     }
#   ]
#}