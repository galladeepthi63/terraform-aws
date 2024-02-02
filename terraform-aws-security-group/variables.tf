variable "projectname" {
  #type = string
}

variable "environment" {
  
}
variable "sg_name" {
  type=string
  
}
variable "comman_tags" {
    default = {}
    type = map
  
}
variable "vpc_id" {
  
}
variable "sg_description" {
    type = string
    #default = ""
  
}
variable "sg_tags" {
  default = {}
  type = map
}
variable "sg_ingress_rules" {
  type=list
  default = []

  
}