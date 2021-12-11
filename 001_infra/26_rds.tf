resource "aws_db_instance" "co777-Mysql" {
  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "8.0.23"
  instance_class         = "db.t3.micro"
  name                   = "co777Mysql"
  identifier             = "co777"
  username               = "co777"
  password               = "co777!!!"
  multi_az               = true
  db_subnet_group_name   = aws_db_subnet_group.co777-dbsub.id
  vpc_security_group_ids = [aws_security_group.co777-sg-Mysql.id]
  skip_final_snapshot    = true

  tags = {
    Name = "co777_Mysql"
  }
}
