resource "aws_lb_target_group_attachment" "co777-albtg-att1" {
  target_group_arn = aws_lb_target_group.co777-albtg.arn
  target_id        = aws_instance.co777-weba.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "co777-albtg-att2" {
  target_group_arn = aws_lb_target_group.co777-albtg.arn
  target_id        = aws_instance.co777-webc.id
  port             = 80
}
