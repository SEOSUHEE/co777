# 가용영역 a의 pub1 subnet
resource "aws_subnet" "Pub1-Bastion" {
  vpc_id            = aws_vpc.co777-vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "co777_1Pub_subnet"
  }
}

# 가용영역 a의 pri2 subnet
resource "aws_subnet" "Pri2-Web" {
  vpc_id            = aws_vpc.co777-vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "co777_2Pri_subnet"
  }
}

# 가용영역 a의 pri3 subnet
resource "aws_subnet" "Pri3-WAS" {
  vpc_id            = aws_vpc.co777-vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "co777_3Pri_subnet"
  }
}

# 가용영역 a의 pri4 subnet
resource "aws_subnet" "Pri4-DB" {
  vpc_id            = aws_vpc.co777-vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "co777_4Pri_subnet"
  }
}

# 가용영역 c의 pub5 subnet
resource "aws_subnet" "Pub5" {
  vpc_id            = aws_vpc.co777-vpc.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "co777_5Pub_subnet"
  }
}

# 가용영역 c의 pri6 subnet
resource "aws_subnet" "Pri6-Web" {
  vpc_id            = aws_vpc.co777-vpc.id
  cidr_block        = "10.0.6.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "co777_6Pri_subnet"
  }
}

# 가용영역 c의 pri7 subnet
resource "aws_subnet" "Pri7-WAS" {
  vpc_id            = aws_vpc.co777-vpc.id
  cidr_block        = "10.0.7.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "co777_7Pri_subnet"
  }
}

# 가용영역 c의 pri8 subnet
resource "aws_subnet" "Pri8-DB_AZ" {
  vpc_id            = aws_vpc.co777-vpc.id
  cidr_block        = "10.0.8.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "co777_8Pri_subnet"
  }
}
