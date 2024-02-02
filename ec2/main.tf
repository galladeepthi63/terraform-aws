resource "aws_security_group" "sg_name" {
  name        = var.sg_name
  description = var.sg_description     #"Allow TLS inbound traffic"
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = var.inbound_port
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"] 
    #ipv6_cidr_blocks = ["::/0"]
  }

#   tags = {
#     Name = "sg_allow_tls"
#   }
}

resource "aws_instance" "ec2_instancename" {
  ami           = var.ami
  count         = var.ec2count
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.sg_name.id]

  tags = {
    Name = var.ec2_instancename
  }
}