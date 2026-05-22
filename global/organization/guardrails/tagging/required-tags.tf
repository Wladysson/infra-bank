resource "aws_organizations_policy" "required_tags" {
  name        = "required-resource-tags"
  description = "Enforce mandatory resource tags"
  type        = "TAG_POLICY"

  content = jsonencode({
    tags = {
      Environment = {
        tag_key = {
          "@@assign" = "Environment"
        }

        enforced_for = {
          "@@assign" = var.enforced_resource_types
        }
      }

      Project = {
        tag_key = {
          "@@assign" = "Project"
        }

        enforced_for = {
          "@@assign" = var.enforced_resource_types
        }
      }

      Owner = {
        tag_key = {
          "@@assign" = "Owner"
        }

        enforced_for = {
          "@@assign" = var.enforced_resource_types
        }
      }

      CostCenter = {
        tag_key = {
          "@@assign" = "CostCenter"
        }

        enforced_for = {
          "@@assign" = var.enforced_resource_types
        }
      }
    }
  })

  tags = local.common_tags
}