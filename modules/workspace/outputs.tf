output "workspace_ids" {
  value = tfe_workspace.workspaces[*].id
}

output "workspace_id" {
  value = tfe_workspace.workspaces[0].id
}

