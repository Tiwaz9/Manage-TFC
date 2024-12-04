output "project_id" {
  value = module.my_assesment_project.project_id
}

output "workspace_ids" {
  description = "List of workspace IDs created by the workspaces module"
  value       = module.workspaces.workspace_ids
}


output "variable_set_id" {
  description = "ID of the existing variable set in Terraform Cloud"
  value       = var.variable_set_id
}