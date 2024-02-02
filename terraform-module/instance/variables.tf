variable "ami_name" {
    type = string
    description = "this  is ami name"
    default = "ami-03265a0778a880afb"
  
}
variable "instance_type" {
    type = string
    description = "this is instance type"
    default = "t2.micro"
  
}
variable "ec2_instancename" {
    type = map
    description = "this is instance name"
    default = {}
  
}