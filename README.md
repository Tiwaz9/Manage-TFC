Terraform Project: Managing TFE Workspaces

This project uses Terraform to manage workspaces in Terraform Cloud or Terraform Enterprise. It automates the creation, configuration, and management of workspaces.
Table of Contents

    Getting Started
    Prerequisites
    Setup
    Usage
    Modules

Getting Started

Clone this repository and follow the instructions to set up and manage TFE workspaces for your organization.
Prerequisites

    Terraform CLI (v1.10.0 or later recommended)

    A Terraform Cloud/Enterprise Account

    API Token for TFE configured in the environment:

    export TFE_TOKEN=<your-tfe-token>

    The following tools installed locally:
        Git
        Terraform CLI

Setup

    Clone the Repository:

git clone <https://github.com/Tiwaz9/Manage-TFC.git
cd <repository-folder>

Initialize the Terraform Project:

terraform init

Set up Variables:

Update the terraform.tfvars file with the required variables:

organization      = "your-tfe-org"
vcs_oauth_token_id = "your-oauth-token-id"
vcs_repo_identifier = "github.com/your-repo-name"

Or use environment variables to set sensitive data:

Plan the Changes:

terraform plan

Apply the Configuration:

 terraform apply

Usage:
Add/Modify Workspaces

Edit the modules/workspace/main.tf file to add new workspaces or modify existing ones.
  Apply the changes:

  
    terraform apply

Destroy Resources
 To delete all managed resources:

    terraform destroy

Modules

This project uses the following modules:
   workspace: Manages individual TFE workspaces.
    my_assesment_project: Configures projects and associations with workspaces.
