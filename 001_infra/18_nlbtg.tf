resource "aws_lb_target_group" "co777-nlbtg" {
  name        = "co1-nlbtg"
  port        = 8080
  protocol    = "TCP"
  target_type = "ip" # 이 부분은 실험, 의논.
  vpc_id      = aws_vpc.co777-vpc.id

  tags = {
    Name = "co777_nlbtg"
  }
}
