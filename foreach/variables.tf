variable "ami" {
    type = string
    description = "this is ami id"
  
}
# variable "instance_type" {
#     type = string
#     description = "this is instance type"
  
# }
variable "instance_name" {
    type = map
    #default = ["web","mongodb","catalogue","redis","user","cart","mysql","rabbitmq","shipping","payment","dispatch"]
    description = "this is instance name"
  
}
# variable "ec2count" {
#     type = string
#     description = "this is instance count"
  
# }
variable "zone_id" {
    type=string
    description = "this is zone id"
  
}
variable "domain_name" {
    type=string
    description = "this is domain name"
  
}