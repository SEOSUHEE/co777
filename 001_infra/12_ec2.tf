
#Bastion
resource "aws_instance" "co777-bastion" {
  ami                         = "ami-003ef1c0e2776ea27"
  instance_type               = "t2.micro"
  key_name                    = "final-co777key"
  availability_zone           = "ap-northeast-2a"
  private_ip                  = "10.0.1.38"
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.Pub1-Bastion.id
  vpc_security_group_ids      = [aws_security_group.co777-sg-Bastion.id]

  tags = {
    Name = "co777_Bastion"
  }
}

#WEB1
resource "aws_instance" "co777-weba" {
  ami                    = "ami-003ef1c0e2776ea27"
  instance_type          = "t2.micro"
  key_name               = "final-co777key"
  availability_zone      = "ap-northeast-2a"
  private_ip             = "10.0.2.38"
  subnet_id              = aws_subnet.Pri2-Web.id
  vpc_security_group_ids = [aws_security_group.co777-sg-Web.id]

  tags = {
    Name = "co777_Weba"
  }
}

#WEB2
resource "aws_instance" "co777-webc" {
  ami                    = "ami-003ef1c0e2776ea27"
  instance_type          = "t2.micro"
  key_name               = "final-co777key"
  availability_zone      = "ap-northeast-2c"
  private_ip             = "10.0.6.38"
  subnet_id              = aws_subnet.Pri6-Web.id
  vpc_security_group_ids = [aws_security_group.co777-sg-Web.id]

  tags = {
    Name = "co777_Webc"
  }
}

#WAS1 
resource "aws_instance" "co777-wasa" {
  ami                    = "ami-0f8b8babb98cc66d0"
  instance_type          = "t2.small"
  key_name               = "final-co777key"
  availability_zone      = "ap-northeast-2a"
  private_ip             = "10.0.3.38"
  subnet_id              = aws_subnet.Pri3-WAS.id
  vpc_security_group_ids = [aws_security_group.co777-sg-WAS.id]

  tags = {
    Name = "co777_WASa"
  }
}

#WAS2
resource "aws_instance" "co777-wasc" {
  ami                    = "ami-0f8b8babb98cc66d0"
  instance_type          = "t2.small"
  key_name               = "final-co777key"
  availability_zone      = "ap-northeast-2c"
  private_ip             = "10.0.7.38"
  subnet_id              = aws_subnet.Pri7-WAS.id
  vpc_security_group_ids = [aws_security_group.co777-sg-WAS.id]

  tags = {
    Name = "co777_WASc"
  }
}

output "public_ip" {
  value = aws_instance.co777-bastion.public_ip
}
