resource "tfe_project" "main_project" {
  name         = var.project_name
  organization = var.organization
}

