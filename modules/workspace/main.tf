resource "tfe_workspace" "workspaces" {
  count        = length(var.workspace_names)
  name         = var.workspace_names[count.index]
  organization = var.organization
  project_id   = var.project_id

  vcs_repo {
    identifier     = var.vcs_repo["identifier"]
    branch         = var.vcs_repo["branch"]
    oauth_token_id = var.vcs_repo["oauth_token_id"]
  }
}
