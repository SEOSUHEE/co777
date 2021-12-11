resource "aws_eip" "co777-nat-eip" {
  vpc = true

  tags = {
    Name = "co777_nat"
  }
}
