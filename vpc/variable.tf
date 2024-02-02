variable "vpc_cidr" {
    type= string
    default = "10.0.0.0/16"
  
}
variable "dns_hostnames" {
    type= bool
    default = true
  
}
variable "vpc_tags" {
    type=map
    default = {}
  
}
variable "comman_tags" {
    type = map
    default = {}
  
}
variable "projectname" {
    type = string
  
}
variable "environment" {
    type=string
  
}
variable "igw_tags" {
    type= map
    default = {}
  
}

variable "public_subnet_tags" {
    default = {}
  
}

variable "public_subnet_cidr" {
  type =list
  validation {
    condition = length(var.public_subnet_cidr) == 2
    error_message = "please give 2 public valid subnet CIDR"

  }
}

variable "private_subnet_tags" {
  default = {}
}

variable "private_subnet_cidr" {
  type =list
  validation {
    condition = length(var.private_subnet_cidr) == 2
    error_message = "please give 2 private valid subnet CIDR"

  }
}

variable "database_subnet_tags" {
  default = {}
}

variable "database_subnet_cidr" {
  type =list
  validation {
    condition = length(var.database_subnet_cidr) == 2
    error_message = "please give 2 database valid subnet CIDR"

  }
}

variable "nat_tags" {
    type=map 
    default = {}
  
}

variable "public_route_tags" {
    default = {}
  
}

variable "private_route_tags" {
    default = {}
  
}

variable "database_route_tags" {
    default = {}
  
}

variable "is_peering_required" {
    type=bool
    default = false
  
}

variable "acceptor_vpc_id" {
  type = string
  default = ""
}

variable "vpc_peering_tags" {
  default = {}
}
