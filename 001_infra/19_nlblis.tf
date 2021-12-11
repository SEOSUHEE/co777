resource "aws_lb_listener" "co777-nlbli" {
  load_balancer_arn = aws_lb.co777-nlb.arn
  port              = 8080
  protocol          = "TCP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.co777-nlbtg.arn
  }
}
