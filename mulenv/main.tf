resource "aws_instance" "web" {
  #count = var.ec2count
  for_each = var.instance_name
  ami           = var.ami
  instance_type = each.value 

  tags = {
    Name = each.key
  }
}
resource "aws_route53_record" "www" {
  #count = var.ec2count
  for_each = aws_instance.web
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [ startswith(each.key,"web") ? each.value.public_ip : each.value.private_ip]
  
}