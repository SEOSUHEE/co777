resource "aws_route_table_association" "co777-igwrtass-Pub1" {
  subnet_id      = aws_subnet.Pub1-Bastion.id
  route_table_id = aws_route_table.co777-igwrt.id
}

resource "aws_route_table_association" "co777-igwrtass-Pub5" {
  subnet_id      = aws_subnet.Pub5.id
  route_table_id = aws_route_table.co777-igwrt.id
}
