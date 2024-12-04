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
  source              = "./modules/my_assesment_project"
  organization        = var.organization
  project_name        = "my_assesment_project"
  existing_project_id = var.existing_project_id

}

module "workspaces" {
  source          = "./modules/workspace"
  organization    = var.organization
  project_id      = module.my_assesment_project.project_id
  workspace_names = ["production", "development", "test"]
  vcs_repo = {
    identifier     = var.vcs_repo_identifier
    branch         = "main"
    oauth_token_id = var.vcs_oauth_token_id
  }
}