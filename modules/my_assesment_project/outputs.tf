output "project_id" {
  value = var.existing_project_id != "" ? var.existing_project_id : tfe_project.main_project[0].id
}