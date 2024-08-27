
resource "aws_instance" "web" {
  ami                                  = "ami-0c8e23f950c7725b9"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1b"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  key_name                             = "nicol"
  monitoring                           = false
  security_groups                      = ["launch-wizard-2"]
  subnet_id                            = "subnet-07eaf30babe8d5758"
  tags = {
    Name = "web"
  }
 
  
}
