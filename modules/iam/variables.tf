#############################################
# IAM Variables
#############################################

variable "role_name" {
  description = "IAM Role Name"
  type        = string
}

variable "profile_name" {
  description = "IAM Instance Profile Name"
  type        = string
}

#############################################
# Managed Policies
#############################################

variable "managed_policy_arns" {
  description = "List of AWS Managed Policy ARNs"

  type = list(string)

  default = []
}

#############################################
# Tags
#############################################

variable "tags" {
  description = "Tags for IAM resources"

  type = map(string)

  default = {}
}