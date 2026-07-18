variable "role_name" {
  description = "IAM Role Name"
  type        = string
}

variable "tags" {
  description = "Tags for the IAM Role"
  type        = map(string)
  default     = {}
}

variable "profile_name" {
  description = "IAM Instance Profile Name"
  type        = string
}