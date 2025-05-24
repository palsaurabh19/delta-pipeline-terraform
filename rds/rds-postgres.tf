resource "aws_db_instance" "hms_db" {
  identifier         = "hive-metastore-db"
  engine             = "postgres"
  instance_class     = "db.t3.micro"
  allocated_storage  = 20
  db_name               = "hmsdb"
  username           = "hmsuser"
  password           = "SecurePassword123"
  skip_final_snapshot = true
}
