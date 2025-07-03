resource "aws_cloudwatch_metric_alarm" "high_cpu" {
  alarm_name          = "CPUUtilizationHigh"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "120"
  statistic           = "Average"
  threshold           = "70"
  alarm_description   = "This metric monitors high CPU"
  dimensions = {
    InstanceId = aws_instance.web.id
  }
}
