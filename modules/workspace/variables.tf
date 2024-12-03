variable "organization" {
  description = "Name of the Terraform Cloud organization"
  type        = string
}

variable "project_id" {
  description = "ID of the project to associate the workspaces with"
  type        = string
}

variable "workspace_type" {
  description = "Type of workspace (vcs or cli)"
  type        = string
}

variable "workspace_name" {
  description = "Name of the single workspace (for vcs)"
  type        = string
  default     = null
}

variable "workspace_names" {
  description = "List of names for CLI-driven workspaces"
  type        = list(string)
  default     = []
}

variable "vcs_repo" {
  description = "VCS repository configuration for the workspace"
  type        = map(string)
  default     = {}
}
