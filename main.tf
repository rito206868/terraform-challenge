# Terraform Cloud detail
terraform {
  cloud {
    organization = "rito-training"

    workspaces {
      name = "terraform-challenge"
    }
  }
}

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
  owner = var.gituser
}

# Add a user to the organization
resource "github_branch" "development" {
  # Repository name
  repository    = var.repository
  # New Branch name
  branch        = var.branch
  # Source Branch name
  source_branch = var.source_branch
}