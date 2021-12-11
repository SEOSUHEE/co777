resource "aws_autoscaling_group" "co777-asg-web" {
  name                      = "co777-asg-web"
  min_size                  = 2
  max_size                  = 10
  desired_capacity          = 2
  health_check_grace_period = 10
  health_check_type         = "EC2"
  force_delete              = true
  launch_configuration      = aws_launch_configuration.co777-aslc-web.name
  vpc_zone_identifier       = [aws_subnet.Pri2-Web.id, aws_subnet.Pri6-Web.id]

  tags = [
    {
      key                 = "Name"
      value               = "co777_auto_web"
      propagate_at_launch = true
    }
  ]
}

resource "aws_autoscaling_group" "co777-asg-was" {
  name                      = "co777-asg-was"
  min_size                  = 2
  max_size                  = 10
  desired_capacity          = 2
  health_check_grace_period = 10
  health_check_type         = "EC2"
  force_delete              = true
  launch_configuration      = aws_launch_configuration.co777-aslc-was.name
  vpc_zone_identifier       = [aws_subnet.Pri3-WAS.id, aws_subnet.Pri7-WAS.id]

  tags = [
    {
      key                 = "Name"
      value               = "co777_auto_WAS"
      propagate_at_launch = true
    }
  ]
}
