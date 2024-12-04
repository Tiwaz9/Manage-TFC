resource "tfe_project" "main_project" {
  count        = var.existing_project_id == "" ? 1 : 0
  name         = var.project_name
  organization = var.organization
}

