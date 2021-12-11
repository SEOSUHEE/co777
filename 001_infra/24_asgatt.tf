resource "aws_autoscaling_attachment" "co777-asg-att-web" {
  autoscaling_group_name = aws_autoscaling_group.co777-asg-web.id
  alb_target_group_arn   = aws_lb_target_group.co777-albtg.arn
}

resource "aws_autoscaling_attachment" "co777-asg-att-was" {
  autoscaling_group_name = aws_autoscaling_group.co777-asg-was.id
}
