terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}
provider "aws" {
  
  region = "us-east-1"
}
/*
# Create group and user in iam services
resource "aws_iam_group" "grp1" {
  name = "supervisor2024"
  lifecycle {
    prevent_destroy = false
  }
}
resource "aws_iam_user" "usr1" {
  name = "gad2024"
  depends_on = [ aws_iam_group.grp1 ]
}
*/
resource "aws_instance" "server1" {
  ami = "ami-033a1ebf088e56e81"
  instance_type = "t3.small"
  key_name = "ec2-key"
  lifecycle {
    create_before_destroy = true
  }
}