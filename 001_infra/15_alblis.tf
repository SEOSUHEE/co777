resource "aws_lb_listener" "co777-alblis" {
  load_balancer_arn = aws_lb.co777-alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.co777-albtg.arn
  }
}
