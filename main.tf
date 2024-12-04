terraform {

  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~>0.50.0"
    }
  }

}

provider "tfe" {
  token = var.tfe_token
}

module "my_assesment_project" {
  source              = "./modules/my_assesment_project"
  organization        = var.organization
  project_name        = "my_assesment_project"
  existing_project_id = var.existing_project_id

}

module "workspaces" {
  source          = "./modules/workspace"
  organization    = var.organization
  workspace_names = ["prod", "dev", "test"]
  project_id      = var.project_id
  vcs_repo = {
    identifier     = var.vcs_repo_identifier
    branch         = "main"
    oauth_token_id = var.vcs_oauth_token_id
  }

  # Pass the variable set ID and workspace IDs
  variable_set_id = var.variable_set_id
  workspace_ids   = [] # Workspace IDs will be populated later
}

