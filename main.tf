# Terraform providers detail
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
# GitHub Detail
  token = var.gittoken
  owner = "rito206868"
}

# Add a user to the organization
resource "github_branch" "development" {
  # Repository name
  repository    = "terraform-challenge"
  # New Branch name
  branch        = "development"
  # Source Branch name
  source_branch = "main"
}