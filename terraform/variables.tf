variable "AWS_ACCESS_KEY_ID" {
  description = "AWS_ACCESS_KEY_ID"
  type = string
  sensitive = true
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "AWS_SECRET_ACCESS_KEY"
  type = string
  sensitive = true
}

# variable "CONFIG_DIRECTORY" {
#   description = "CONFIG_DIRECTORY"
#   type = string
#   default = "./terraform"
# }

# variable "ssh_key" {
#   description = "ssh_key"
#   type = string
#   sensitive = true
# }