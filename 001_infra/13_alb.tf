resource "aws_lb" "co777-alb" {
  name               = "co777-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.co777-sg-ALB.id]
  subnets            = [aws_subnet.Pub1-Bastion.id, aws_subnet.Pub5.id]

  tags = {
    Nmae = "co777_alb"
  }
}

output "alb-dns" {
  value = aws_lb.co777-alb.dns_name
}
