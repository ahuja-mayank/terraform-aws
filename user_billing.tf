# user_billing.tf

resource "aws_organizations_account" "netflix_subaccount" {
  name      = "netflix-subaccount"  # Replace with your desired subaccount name
  email     = "subaccount@example.com"  # Replace with the email for the subaccount
  role_name = "OrganizationAccountAccessRole"  # Replace with the desired role name for the subaccount

  # Add additional configuration as needed
}

resource "aws_budgets_budget" "netflix_budget" {
  budget_limit {
    amount    = 100
    unit      = "USD"
  }
  budget_type = "COST"
  time_period {
    start = "2023-01-01"
    end   = "2023-12-31"
  }

  # Add additional configuration as needed
}
