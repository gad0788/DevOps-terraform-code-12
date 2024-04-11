module "rds1" {
  source = "../module/rds"
  allocated_storage = 10
  backup_retention_period = 0
  db_name = "devdb"
  engine = "mysql"
  engine_version = "5.7"
  identifier = "dev-database"
  password = sensitive(true)
  username = sensitive(true)
  instance_class = "db.t3.micro"
  region = "us-east-1"
  parameter_group_name = "default.mysql15.7"
  skip_final_snapshot = true
 
}
