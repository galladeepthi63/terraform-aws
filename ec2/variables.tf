variable "sg_name" {
    type = string
    description = "this is security group name"
  
}
variable "sg_description" {
    type = string
    description = "this is security group name"
  
}
variable "inbound_port" {
    #type = string
    description = "this is inboind port number"
    default = 0
  
}
variable "cidr_blocks" {
    type = list
    description = "this is outboind port number"
    default = ["0.0.0.0/0"]
  
}
variable "ec2_instancename" {
    type = string
    description = "this is instance name"
  
}
variable "ami" {
    type = string
    description = "this is ami name "
  
}
variable "ec2count" {
    type = string
    description = "this ec2 instance "
  
}