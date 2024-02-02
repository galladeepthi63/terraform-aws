variable "vpc_cidr" {
    default = "10.0.0.0/16"
  
}
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
variable "vpc_tags" {
    default = {}
  
}
variable "public_subnet_cidr" {
    default = ["10.0.1.0/24","10.0.2.0/24"]
  
}
variable "private_subnet_cidr" {
    default = ["10.0.11.0/24","10.0.12.0/24"]
  
}

variable "database_subnet_cidr" {
    default = ["10.0.21.0/24","10.0.22.0/24"]
  
}
# variable "private_subnet_ids" {
#     default={}
  
# }
# variable "public_subnet_ids" {
#     default={}
  
# }

# variable "database_subnet_ids" {
#     default={}
  
# }

variable "is_peering_requried" {
    #type=bool
    default = true
  
}

# variable "acceptor_vpc_id" {
#     #type=string
#     default = ""
# }

# variable "vpc_peering_tags" {
#   default = {}
# }




