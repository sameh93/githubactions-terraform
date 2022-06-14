terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.27"
    }
  }

  backend "s3" {
    bucket = "samen-github-actions"
    key    = "tfstate/tfstate.tf"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}
/*
resource "aws_instance" "main_ec2" {
  count                       = 1
  ami                         = "ami-0022f774911c1d690"
  instance_type               = "t2.micro"
  subnet_id                   = "subnet-4962842f"
  associate_public_ip_address = "true"
  vpc_security_group_ids      = ["sg-0d0f4148b2d8565a9"]
}
*/