variable "workspace_ids" {
  description = "Workspace IDs to associate with the variable set"
  type        = list(string)
  default     = []
}

resource "tfe_workspace" "workspaces" {
  for_each      = toset(var.workspace_names)
  name          = each.value
  organization  = var.organization
  project_id    = var.project_id
   lifecycle {
    create_before_destroy = false
    ignore_changes = all
  }


  vcs_repo {
    identifier     = var.vcs_repo.identifier
    branch         = var.vcs_repo.branch
    oauth_token_id = var.vcs_repo.oauth_token_id
  }
}

