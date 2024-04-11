terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.44.0"
    }
  }
}
provider "aws" {
 region = var.region
}

resource "aws_db_instance" "rds" {
  allocated_storage    = var.allocated_storage
  db_name              = var.db_name
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot  = var.skip_final_snapshot
  backup_retention_period = var.backup_retention_period
  identifier = var.identifier
 /*
 lifecycle {
    prevent_destroy = true
  }
*/
}