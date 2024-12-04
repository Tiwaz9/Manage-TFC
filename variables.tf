variable "organization" {
  description = "Name of the TFC organization"
  type        = string
}

variable "project_name" {
  description = "Name of the project to create"
  type        = string
}

variable "tfe_token" {
  description = "TFE API Token"
  type        = string
  sensitive   = true
}

variable "vcs_repo_identifier" {
  description = "https://github.com/Tiwaz9/Manage-TFC"
  type        = string
}

variable "vcs_oauth_token_id" {
  description = "OAuth token ID for connecting TFC to VCS"
  type        = string
  sensitive   = true
}

variable "project_id" {
  description = "The ID of the existing project in Terraform Cloud"
  type        = string
}

variable "existing_project_id" {
  description = "The ID of an existing project, if available"
  type        = string
  default     = ""
}
