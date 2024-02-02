resource "aws_lb" "web_albs" {
  name               = "${local.ec2_name}-${var.tags.Component}" #roboshop-dev-app-alb
  internal           = false
  load_balancer_type = "application"
  security_groups    = [data.aws_ssm_parameter.web_alb_sg_id.value]
  subnets            = split(",", data.aws_ssm_parameter.public_subnet_ids.value)

  #enable_deletion_protection = true

  tags = merge(
    var.comman_tags,
    var.tags
  )
}

resource "aws_lb_listener" "https" {
  load_balancer_arn = aws_lb.web_albs.arn
  port              = "443"
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-TLS13-1-2-2021-06"
  certificate_arn   = data.aws_ssm_parameter.acm_certificate_arn.value

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "This is from WEB ALB using HTTPS"
      status_code  = "200"
    }
  }
}


module "records" {
  source  = "terraform-aws-modules/route53/aws//modules/records"

  zone_name = var.zone_name

  records = [
    {
      name    = "web-${var.environment}"
      type    = "A"
      alias   = {
        name    = aws_lb.web_albs.dns_name
        zone_id = aws_lb.web_albs.zone_id
      }
    }
  ]
}