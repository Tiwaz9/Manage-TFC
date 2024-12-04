resource "tfe_variable_set" "variable_set" {
  name         = var.variable_set_name
  organization = var.organization
  workspace_ids = var.workspaces  # Associate the variable set with workspaces
}

resource "tfe_variable" "terraform_variable" {
  key            = "terraform_var_key"
  value          = "terraform_var_value"
  category       = "terraform"  # Specify the category as "terraform" for Terraform variables
  variable_set_id = tfe_variable_set.variable_set.id
}

resource "tfe_variable" "environment_variable" {
  key            = "ENV_VAR_KEY"
  value          = "ENV_VAR_VALUE"
  category       = "env"  # Specify the category as "env" for environment variables
  variable_set_id = tfe_variable_set.variable_set.id
}

resource "tfe_project" "main_project" {
  name         = var.project_name
  organization = var.organization
}
