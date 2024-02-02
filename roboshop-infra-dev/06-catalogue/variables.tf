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
variable "zone_name" {
  default= "ramakrishna.cloud"
}

variable "tags" {
  default = {
    Component = "app-alb"
  }
}