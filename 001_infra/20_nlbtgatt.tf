resource "aws_lb_target_group_attachment" "co777-nlbtg-att1" {
  target_group_arn = aws_lb_target_group.co777-nlbtg.arn
  target_id        = "10.0.3.38"
  port             = 8080
}

resource "aws_lb_target_group_attachment" "co777-nlbtg-att2" {
  target_group_arn = aws_lb_target_group.co777-nlbtg.arn
  target_id        = "10.0.7.38"
  port             = 8080
}
