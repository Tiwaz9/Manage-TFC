terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.60.1"
    }
  }
}

provider "tfe" {
  token = var.tfe_token
}
module "my_assesment_project" {
  source       = "./modules/my_assesment_project"
  organization = var.organization
  project_name = "my_assesment_project"
}

module "vcs_workspace" {
  source         = "./modules/workspace"
  organization   = var.organization
  project_id     = module.my_assesment_project.project_id
  workspace_type = "vcs"
  workspace_name = "vcs-driven-workspace"
  vcs_repo = {
    identifier     = var.vcs_repo_identifier
    branch         = "main"
    oauth_token_id = var.vcs_oauth_token_id
  }
}

module "cli_workspaces" {
  source         = "./modules/workspace"
  organization   = var.organization
  project_id     = module.my_assesment_project.project_id
  workspace_type = "cli"
  workspace_names = ["production", "development", "test"]
}

module "variable_set" {
  source            = "./modules/variable_set"
  organization      = var.organization
  variable_set_name = "shared-variable-set"
  workspaces        = concat(
    [module.vcs_workspace.workspace_id],
    module.cli_workspaces.workspace_ids
  )
}