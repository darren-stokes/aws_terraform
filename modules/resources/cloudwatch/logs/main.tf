resource "aws_cloudwatch_log_group" "clg" {
  name              = var.name
  retention_in_days = var.retention_days

  tags = {
    Environment = var.environment
    Application = var.application
  }
}