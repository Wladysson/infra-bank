resource "aws_ssoadmin_permission_set" "administrator" {
  instance_arn = var.instance_arn

  name             = "AdministratorAccess"
  description      = "Full administrator access"
  session_duration = "PT8H"
}

resource "aws_ssoadmin_managed_policy_attachment" "administrator_policy" {
  instance_arn       = var.instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.administrator.arn

  managed_policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_ssoadmin_permission_set" "power_user" {
  instance_arn = var.instance_arn

  name             = "PowerUserAccess"
  description      = "Power user access"
  session_duration = "PT8H"
}

resource "aws_ssoadmin_managed_policy_attachment" "power_user_policy" {
  instance_arn       = var.instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.power_user.arn

  managed_policy_arn = "arn:aws:iam::aws:policy/PowerUserAccess"
}

resource "aws_ssoadmin_permission_set" "readonly" {
  instance_arn = var.instance_arn

  name             = "ReadOnlyAccess"
  description      = "Read only access"
  session_duration = "PT4H"
}

resource "aws_ssoadmin_managed_policy_attachment" "readonly_policy" {
  instance_arn       = var.instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.readonly.arn

  managed_policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}