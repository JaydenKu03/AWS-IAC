resource "aws_instance" "web" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 in us-east-1
  instance_type = var.ec2_instance_type
  subnet_id     = aws_subnet.private_a.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  user_data     = file("userdata.sh")

  tags = { Name = "project-web" }

  lifecycle {
    create_before_destroy = true
  }

  depends_on = [aws_nat_gateway.nat]
}

resource "aws_lb_target_group_attachment" "web_attach" {
  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = aws_instance.web.id
  port             = 80
}
