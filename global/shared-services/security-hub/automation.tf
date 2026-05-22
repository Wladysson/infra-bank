resource "aws_securityhub_action_target" "investigate" {
  identifier  = "investigate-finding"
  name        = "Investigate"
  description = "Security investigation workflow"
}