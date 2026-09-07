variable "upcloud_username" {
  type        = string
  description = "UpCloud API subaccount username"
}

variable "upcloud_password" {
  type        = string
  description = "UpCloud API subaccount password"
  sensitive   = true
}