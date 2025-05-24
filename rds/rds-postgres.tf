resource "aws_db_instance" "hms_db" {
  identifier         = "hive-metastore-db"
  engine             = "postgres"
  instance_class     = "db.t3.micro"
  allocated_storage  = 20
  name               = "hmsdb"
  username           = "hmsuser"
  password           = "SecurePassword123"
  skip_final_snapshot = true
}
