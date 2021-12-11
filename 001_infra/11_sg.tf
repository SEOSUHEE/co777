resource "aws_security_group" "co777-sg-Bastion" {
  name        = "Bastion rule"
  description = "Bastion rule"
  vpc_id      = aws_vpc.co777-vpc.id

  tags = {
    Name = "co777_sg_Bastion"
  }
}

resource "aws_security_group_rule" "co777-sg-Bastion-in1" {
  description       = "Bastion inbound rule-SSH"
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"] # My IP 변경
  security_group_id = aws_security_group.co777-sg-Bastion.id
}

resource "aws_security_group_rule" "co777-sg-Bastion-in2" {
  description       = "Bastion inbound rule-ICMP"
  type              = "ingress"
  from_port         = -1
  to_port           = -1
  protocol          = "icmp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.co777-sg-Bastion.id
}

resource "aws_security_group_rule" "co777-sg-Bastion-out" {
  description       = "Bastion outbound rule"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = -1
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.co777-sg-Bastion.id
}

resource "aws_security_group" "co777-sg-ALB" {
  name        = "ALB rule"
  description = "ALB rule"
  vpc_id      = aws_vpc.co777-vpc.id

  tags = {
    Name = "co777_sg_ALB"
  }
}

resource "aws_security_group_rule" "co777-sg-ALB-in1" {
  description       = "ALB inbound rule-HTTP"
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.co777-sg-ALB.id
}

resource "aws_security_group_rule" "co777-sg-ALB-in2" {
  description       = "ALB inbound rule-HTTPS"
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.co777-sg-ALB.id
}

resource "aws_security_group_rule" "co777-sg-ALB-out" {
  description       = "ALB outbound rule"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = -1
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.co777-sg-ALB.id
}

resource "aws_security_group" "co777-sg-Web" {
  name        = "Web rule"
  description = "Web rule"
  vpc_id      = aws_vpc.co777-vpc.id

  tags = {
    Name = "co777_sg_Web"
  }
}

resource "aws_security_group_rule" "co777-sg-Web-in1" {
  description              = "Web inbound rule-SSH"
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.co777-sg-Bastion.id
  security_group_id        = aws_security_group.co777-sg-Web.id
}

resource "aws_security_group_rule" "co777-sg-Web-in2" {
  description              = "Web inbound rule-HTTP"
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.co777-sg-ALB.id
  security_group_id        = aws_security_group.co777-sg-Web.id
}

resource "aws_security_group_rule" "co777-sg-Web-in3" {
  description       = "Web inbound rule-ICMP"
  type              = "ingress"
  from_port         = -1
  to_port           = -1
  protocol          = "icmp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.co777-sg-Web.id
}

resource "aws_security_group_rule" "co777-sg-Web-out" {
  description       = "Web outbound rule"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = -1
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.co777-sg-Web.id
}

resource "aws_security_group" "co777-sg-WAS" {
  name        = "WAS rule"
  description = "WAS rule"
  vpc_id      = aws_vpc.co777-vpc.id

  tags = {
    Name = "co777_sg_WAS"
  }
}

resource "aws_security_group_rule" "co777-sg-WAS-in1" {
  description              = "WAS inbound rule-SSH"
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.co777-sg-Bastion.id
  security_group_id        = aws_security_group.co777-sg-WAS.id
}

resource "aws_security_group_rule" "co777-sg-WAS-in2" {
  description              = "WAS inbound rule-HTTP"
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.co777-sg-ALB.id
  security_group_id        = aws_security_group.co777-sg-WAS.id
}

resource "aws_security_group_rule" "co777-sg-WAS-in3" {
  description       = "WAS inbound rule-ICMP"
  type              = "ingress"
  from_port         = -1
  to_port           = -1
  protocol          = "icmp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.co777-sg-WAS.id
}

resource "aws_security_group_rule" "co777-sg-WAS-out" {
  description       = "WAS outbound rule"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = -1
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.co777-sg-WAS.id
}

resource "aws_security_group" "co777-sg-Mysql" {
  name        = "Mysql rule"
  description = "Mysql rule"
  vpc_id      = aws_vpc.co777-vpc.id

  tags = {
    Name = "co777_sg_Mysql"
  }
}

resource "aws_security_group_rule" "co777-sg-Mysql-in" {
  description              = "Mysql inbound rule-Mysql"
  type                     = "ingress"
  from_port                = 3306
  to_port                  = 3306
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.co777-sg-WAS.id
  security_group_id        = aws_security_group.co777-sg-Mysql.id
}

resource "aws_security_group_rule" "co777-sg-Mysql-out" {
  description       = "Mysql outbound rule"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = -1
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.co777-sg-Mysql.id
}
