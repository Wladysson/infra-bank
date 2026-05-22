resource "aws_ce_cost_category" "environment" {
  name         = "Environment"
  rule_version = "CostCategoryExpression.v1"

  rule {
    value = "Production"

    rule {
      dimensions {
        key           = "TAG"
        values        = ["prod"]
        match_options = ["EQUALS"]
      }
    }
  }

  rule {
    value = "Development"

    rule {
      dimensions {
        key           = "TAG"
        values        = ["dev"]
        match_options = ["EQUALS"]
      }
    }
  }

  default_value = "Other"
}