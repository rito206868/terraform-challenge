# Displays the branch it created
output "github_branch_created" {
  description = "Github branch created ID"
  value = "${resource.github_branch.development.id}"
}