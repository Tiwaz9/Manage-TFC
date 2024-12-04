variable "organization" {
  description = "The name of the Terraform Cloud organization"
  type        = string
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
}