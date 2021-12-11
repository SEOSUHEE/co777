resource "aws_vpc" "co777-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "co777_vpc"
  }
}
