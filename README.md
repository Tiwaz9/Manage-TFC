Terraform Workspace Automation with TFE Provider

This README provides a step-by-step guide for initializing and automating workspaces with Terraform Cloud/Enterprise using the TFE provider.
Pre-requisites

    Terraform installed locally.
    Access to Terraform Cloud or Enterprise.
    TFE Token and OAuth Token for authentication.

1. Environment Setup
Set Environment Variables (Preferred)

export TFE_TOKEN=<your-tfe-token>
export TFE_OAUTH_TOKEN_ID=<your-oauth-token-id>

Optional: Use .terraformrc for Persistent Tokens

Create ~/.terraformrc (Linux/Mac) or %APPDATA%\terraform.rc (Windows):

credentials "app.terraform.io" {
  token = "<your-tfe-token>"
}

oauth_token "app.terraform.io" {
  id = "<your-oauth-token-id>"
}

2. Terraform Initialization
Clone Your Repository

git clone <https://github.com/Tiwaz9/Manage-TFC.git>
cd <your-repo-folder>

Run Terraform Initialization

terraform init

3. Apply the Configuration
Standard Apply

terraform apply 

Passing Variables Manually

terraform apply -var="tfe_token=<your-tfe-token>" -var="oauth_token_id=<your-oauth-token-id>"


4. Debugging
Enable Debug Logs

TF_LOG=DEBUG terraform apply

Common Issues

    Authentication Errors: Ensure valid TFE_TOKEN and TFE_OAUTH_TOKEN_ID.
    Agent Errors: Remove agent_pool_id if not using agents.

5. Cleanup

To destroy created resources:

terraform destroy -auto-approve

6. Best Practices

    Use environment variables for sensitive tokens.
    Validate .tfstate and ensure no conflicting configurations.
    Use remote execution mode unless explicitly requiring agents.

Happy Automating! 
