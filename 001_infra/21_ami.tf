resource "aws_ami_from_instance" "co777-ami-web" {
  name               = "co777-ami-web"
  source_instance_id = aws_instance.co777-weba.id

  depends_on = [
    aws_instance.co777-weba
  ]

  tags = {
    "Name" = "co777_ami_web"
  }
}

resource "aws_ami_from_instance" "co777-ami-was" {
  name               = "co777-ami-was"
  source_instance_id = aws_instance.co777-wasa.id

  depends_on = [
    aws_instance.co777-wasa
  ]

  tags = {
    "Name" = "co777_ami_was"
  }
}
