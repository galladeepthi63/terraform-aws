resource "aws_instance" "web" {
  count = var.ec2count
  ami           = var.ami
  instance_type = var.instance_name[count.index] == "mongodb" || var.instance_name[count.index] == "redis" || var.instance_name[count.index] == "mysql" ? "t3.small" : "t2.micro"

  tags = {
    Name = var.instance_name[count.index]
  }
}
resource "aws_route53_record" "www" {
  count = var.ec2count
  zone_id = var.zone_id
  name    = "${var.instance_name[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [var.instance_name[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
  
}