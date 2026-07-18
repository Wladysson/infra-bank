resource "aws_security_group" "security_services" {
  name        = "${var.environment}-security-services"
  description = "Security services communication"
  vpc_id      = var.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = local.common_tags
}