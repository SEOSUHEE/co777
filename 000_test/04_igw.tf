resource "aws_internet_gateway" "co777-igw" {
  vpc_id = aws_vpc.co777-vpc.id

  tags = {
    Nmae = "co777_igw"
  }
}
