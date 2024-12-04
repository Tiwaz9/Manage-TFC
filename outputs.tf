output "project_id" {
  value = module.my_assesment_project.project_id
}

output "workspace_ids" {
  description = "List of all workspace IDs"
  value       = module.workspaces.workspace_ids
}