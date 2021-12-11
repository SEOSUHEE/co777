resource "aws_nat_gateway" "co777-natgw" {
  allocation_id = aws_eip.co777-nat-eip.id
  subnet_id     = aws_subnet.Pub1-Bastion.id
  depends_on = [
    aws_internet_gateway.co777-igw
  ]

  tags = {
    Name = "co777_natgw"
  }
}
