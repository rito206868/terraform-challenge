# Add the variable in this way so that it takes the value from the terraform 
# environment variable instead passing the direct value from here
variable "gittoken" {
    description = "Github access token"
    type = string
    sensitive = true
}

variable "gituser" {
  description = "gituser."
}

variable "repository" {
  description = "repository."
}

variable "branch" {
  description = "branch."
}

variable "source_branch" {
  description = "source_branch."
}