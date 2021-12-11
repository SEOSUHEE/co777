resource "aws_route_table_association" "co777-natgwrtass-Pri2" {
  subnet_id      = aws_subnet.Pri2-Web.id
  route_table_id = aws_route_table.co777-natgwrt.id
}

resource "aws_route_table_association" "co777-natgwrtass-Pri3" {
  subnet_id      = aws_subnet.Pri3-WAS.id
  route_table_id = aws_route_table.co777-natgwrt.id
}

resource "aws_route_table_association" "co777-natgwrtass-Pri4" {
  subnet_id      = aws_subnet.Pri4-DB.id
  route_table_id = aws_route_table.co777-natgwrt.id
}

resource "aws_route_table_association" "co777-natgwrtass-Pri6" {
  subnet_id      = aws_subnet.Pri6-Web.id
  route_table_id = aws_route_table.co777-natgwrt.id
}

resource "aws_route_table_association" "co777-natgwrtass-Pri7" {
  subnet_id      = aws_subnet.Pri7-WAS.id
  route_table_id = aws_route_table.co777-natgwrt.id
}

resource "aws_route_table_association" "co777-natgwrtass-Pri8" {
  subnet_id      = aws_subnet.Pri8-DB_AZ.id
  route_table_id = aws_route_table.co777-natgwrt.id
}
