# Add the variable in this way so that it takes the value from the terraform 
# environment variable instead passing the direct value from here
variable "gittoken" {
    description = "Github access token"
    type = string
    sensitive = true
}