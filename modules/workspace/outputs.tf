output "workspace_ids" {
  value = tfe_workspace.workspaces[*].id
}
