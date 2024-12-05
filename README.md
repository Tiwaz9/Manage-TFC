Terraform Project for Assessment Organization

This repository manages the infrastructure for the Assesment-Org-12-03 organization using Terraform Cloud for remote execution and variable management.

Table of Contents
========================================
    Project Overview
    Requirements
    Setup and Configuration
    Execution
    Variables
    Outputs
    Contributing
    License
========================================

Project Overview

This project provisions infrastructure using Terraform and integrates with Terraform Cloud for remote state management and execution. The configuration supports multiple environments (dev, test, prod), and uses variable sets in Terraform Cloud to streamline variable management.
Requirements

    Terraform v1.10.0 or later
    Terraform Cloud account
    GitHub repository integration with Terraform Cloud
    Access to necessary variable values (e.g., organization, VCS repository identifier)

========================================

Setup and Configuration
1. Clone the Repository

git clone <repository-url>
cd <repository-name>
========================================

2. Initialize Terraform

Ensure the backend and modules are initialized:

terraform init
========================================

3. Variable Management

All required variables are managed in Terraform Cloud. For local testing, you can override them using environment variables or command-line arguments.

========================================

4. Directory Structure

    main.tf - Core configuration file.
    variables.tf - Input variables declaration.
    outputs.tf - Output definitions.
    modules/ - Custom Terraform modules.
    README.md - Project documentation.

========================================

Execution
1. Plan

To generate and review the execution plan:

terraform plan

2. Apply

To apply the changes to the infrastructure:

terraform apply

3. Destroy

To destroy the infrastructure:

terraform destroy

========================================

Variables

The following variables are used in this project:
Variable Name	Description	Type	Default Value
organization	Name of the Terraform Cloud org	string	Assesment-Org-12-03
vcs_repo_identifier	Identifier for the VCS repository	string	default-vcs-repo-identifier
project_name	Name of the Terraform project	string	default-project-name
variable_set_id	Variable set ID in Terraform Cloud	string	default-variable-set-id

Sensitive values like tokens are managed directly in Terraform Cloud with the Sensitive flag enabled.

========================================

Outputs
Output Name	Description
project_id	The ID of the created Terraform Cloud project

========================================

Contributing
Guidelines

    Fork the repository and create feature branches.
    Ensure your code is formatted (terraform fmt) and linted before submitting a PR.
