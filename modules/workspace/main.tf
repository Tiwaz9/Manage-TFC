resource "tfe_workspace" "workspaces" {
  count        = var.workspace_type == "vcs" ? 1 : length(var.workspace_names)
  name         = var.workspace_type == "vcs" ? var.workspace_name : var.workspace_names[count.index]
  organization = var.organization

  dynamic "vcs_repo" {
    for_each = var.workspace_type == "vcs" ? [1] : []
    content {
      identifier     = var.vcs_repo["identifier"]
      branch         = var.vcs_repo["branch"]
      oauth_token_id = var.vcs_repo["oauth_token_id"]
    }
  }
}

