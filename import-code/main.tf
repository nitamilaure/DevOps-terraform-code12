
resource "aws_instance" "web" {
  ami                                  = "ami-0c101f26f147fa7fd"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1b"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  key_name                             = "wordpress1"
  monitoring                           = false
  security_groups                      = ["launch-wizard-6"]
  source_dest_check                    = true
  subnet_id                            = "subnet-00b71f92ce946cbdd"
  tags = {
    Name = "created by terraform"
  }
  
  }

