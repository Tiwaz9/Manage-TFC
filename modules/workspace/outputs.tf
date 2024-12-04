output "workspace_ids" {
  value = [for ws in tfe_workspace.workspaces : ws.id]
}
