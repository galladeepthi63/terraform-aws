resource "aws_ssm_parameter" "web_alb_listener_arn" {
  name  = "/${var.projectname}/${var.environment}/web_alb_listener_arn"
  type  = "String"
  value = aws_lb_listener.https.arn
}


resource "aws_ssm_parameter" "web_alb_dns_name" {
  name  = "/${var.projectname}/${var.environment}/web_alb_dns_name"
  type  = "String"
  value = aws_lb.web_albs.dns_name
}