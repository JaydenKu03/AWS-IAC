output "alb_dns_name" {
  value = aws_lb.project.dns_name
}

output "rds_endpoint" {
  value = aws_db_instance.project.endpoint
}

output "private_instance_ip" {
  value = aws_instance.web.private_ip
}
