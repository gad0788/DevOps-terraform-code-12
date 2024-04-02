
resource "aws_instance" "web" {
  ami                                  = "ami-033a1ebf088e56e81"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1d"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  key_name                             = "ec2-key"
  monitoring                           = false
  private_ip                           = "172.31.88.21"
  security_groups                      = ["default"]
  subnet_id                            = "subnet-080c15a66a5b0f962"
  tags = {
    Name = "webserver"
  }
  tags_all = {
    Name = "webserver"
}
}
