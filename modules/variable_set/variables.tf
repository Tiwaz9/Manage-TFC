variable "organization" {
  description = "The name of the Terraform Cloud organization"
  type        = string
  default = []
}

variable "variable_set_name" {
  description = "Name of the variable set"
  type        = string
}

variable "workspaces" {
  description = "List of workspace IDs to apply the variable set to"
  type        = list(string)
}

variable "project_name" {
  description = "The name of the project to associate with the variable set"
  type        = string
  default = []
}
variable "variable_set_id" {
  description = "The ID of the existing variable set in Terraform Cloud"
  type        = string
  default     = "varset-ftFohC54QtdDZ4mF"  
}

variable "TF_VAR_vcs_repo_identifier" {
  description = "Repository identifier for VCS integration"
  type        = string
  default = "https://github.com/Tiwaz9/Manage-TFC"
}