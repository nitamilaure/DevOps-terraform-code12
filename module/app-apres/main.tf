module "Michèle" {
    source = "../rds"
   allocated_storage   = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "defaultmysql5.7"
  skip_final_snapshot  = true
  backup_retention_period = 0
  identifier = "dev-database"
  
}
provider "aws" {
  region = "us-east-1"
}

