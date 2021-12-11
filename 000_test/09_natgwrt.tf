resource "aws_route_table" "co777-natgwrt" {
  vpc_id = aws_vpc.co777-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.co777-natgw.id
  }

  tags = {
    Name = "co777_natgw"
  }
}
