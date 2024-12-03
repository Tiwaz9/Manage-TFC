output "project_id" {
  value = module.my_assesment_project.project_id
}

output "vcs_workspace_id" {
  value = module.vcs_workspace.workspace_id
}

output "cli_workspace_ids" {
  value = module.cli_workspaces.workspace_ids
}

output "variable_set_id" {
  value = module.variable_set.variable_set_id
}