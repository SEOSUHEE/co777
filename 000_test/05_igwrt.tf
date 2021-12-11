resource "aws_route_table" "co777-igwrt" {
  vpc_id = aws_vpc.co777-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.co777-igw.id
  }

  tags = {
    Name = "co777_igwroute"
  }
}
