
resource "aws_instance" "ec2" {
  ami                         = data.aws_ami.centos8.image_id
  instance_type               = var.instance_type
  vpc_security_group_ids      = ["sg-0a13f9496e8f730c7"]
  subnet_id                   = "subnet-0b5eda00048daa6c0"
  associate_public_ip_address = true
  instance_market_options {
    market_type = "spot"
    spot_options {
      instance_interruption_behavior = "stop"
      spot_instance_type             = "persistent"
    }
  }
  tags = {
    Name = var.tool
  }
}


resource "aws_route53_record" "sonarqube" {
  zone_id = "Z0266758558URTEO39RC"
  name    = var.tool
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2.public_ip]
}

