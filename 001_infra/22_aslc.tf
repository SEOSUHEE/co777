resource "aws_launch_configuration" "co777-aslc-web" {
  name            = "co1-web"
  image_id        = aws_ami_from_instance.co777-ami-web.id
  instance_type   = "t2.micro"
  security_groups = [aws_security_group.co777-sg-Web.id]
  key_name        = "final-co777key"

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_launch_configuration" "co777-aslc-was" {
  name            = "co1-was"
  image_id        = aws_ami_from_instance.co777-ami-was.id
  instance_type   = "t2.small"
  security_groups = [aws_security_group.co777-sg-WAS.id]
  key_name        = "final-co777key"

  lifecycle {
    create_before_destroy = true
  }
}
