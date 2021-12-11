resource "aws_lb" "co777-nlb" {
  name               = "co777-nlb"
  internal           = true
  load_balancer_type = "network"
  subnets            = [aws_subnet.Pri2-Web.id, aws_subnet.Pri6-Web.id]

  tags = {
    Name = "co777_nlb"
  }
}
