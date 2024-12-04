variable "organization" {
  description = "The name of the Terraform Cloud organization"
  type        = string
}

variable "project_id" {
  description = "The ID of the project to associate the workspaces with"
  type        = string
}

variable "workspace_names" {
  description = "List of names for the workspaces"
  type        = list(string)
}

variable "vcs_repo" {
  description = "VCS repository configuration"
  type        = map(string)
}
variable "variable_set_id" {
  description = "The ID of the existing variable set to associate with workspaces"
  type        = string
}


