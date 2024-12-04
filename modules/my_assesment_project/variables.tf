variable "organization" {
  description = "Name of the Terraform Cloud organization"
  type = string
}

variable "project_name" {
  description = "Name of the project to create"
  type = string
}

variable "existing_project_id" {
  description = "The ID of an existing project, if available"
  type        = string
  default     = ""
}