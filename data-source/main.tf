terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.43.0"
    }
  }
}

provider "aws" {
  
  region = "us-east-1"
}
data "aws_instance" "ec21" {
  instance_id = "i-0fcfe5f415c054bfe"
  }

resource "aws_instance" "demo" {
    ami = data.aws_ami.ami1.id
    instance_type = data.aws_instance.ec21.instance_type
    key_name = data.aws_instance.ec21.key_name  
}



