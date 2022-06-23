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
  token = var.token # or `GITHUB_TOKEN`
}

# Add a user to the organization
resource "github_branch" "development" {
  repository    = "terraform-challenge"
  branch        = "development"
  source_branch = "main"
}