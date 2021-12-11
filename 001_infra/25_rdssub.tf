resource "aws_db_subnet_group" "co777-dbsub" {
  name        = "co777_dbsub"
  description = "Mysql subnet group"
  subnet_ids  = [aws_subnet.Pri4-DB.id, aws_subnet.Pri8-DB_AZ.id]

  tags = {
    Name = "co777_dbsub"
  }
}
