#############################################
# Security Group Variables
#############################################

variable "vpc_id" {
  description = "The VPC ID where the security group will be created."
  type        = string
}

variable "security_group_name" {
  description = "Name of the security group."
  type        = string
}

variable "security_group_description" {
  description = "Description of the security group."
  type        = string
}

#############################################
# Network Variables
#############################################

variable "cidr_ipv4" {
  description = "IPv4 CIDR block allowed to access the security group."
  type        = string
}

variable "ip_protocol" {
  description = "IP protocol for security group rules (e.g. tcp, udp, -1)."
  type        = string
  default     = "tcp"
}

#############################################
# Splunk Ports
#############################################

variable "management_port" {
  description = "Splunk Management Port (Default: 8089)"
  type        = number
  default     = 8089
}

variable "receiving_port" {
  description = "Splunk Receiving Port for Universal/Heavy Forwarders (Default: 9997)"
  type        = number
  default     = 9997
}

variable "web_interface_port" {
  description = "Splunk Web Interface Port (Default: 8000)"
  type        = number
  default     = 8000
}

variable "api_port" {
  description = "HTTPS API Port (Default: 443)"
  type        = number
  default     = 443
}

#############################################
# IAM Variables
#############################################

variable "role_name" {
  description = "Name of the IAM Role"
  type        = string
}

variable "profile_name" {
  description = "Name of the IAM Instance Profile"
  type        = string
}

variable "managed_policy_arns" {
  description = "List of AWS managed policy ARNs to attach to the IAM role"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Tags for the IAM Role and Instance Profile"
  type        = map(string)
  default     = {}
}

variable "component_names" {
  description = "List of component names to create EC2 instances for"
  type        = list(string)
}

variable "ami" {
  description = "AMI to use for the EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "Instance type to use for the EC2 instances"
  type        = string
}

variable "key_name" {
  description = "Key name to use for the EC2 instances"
  type        = string
}

variable "iam_instance_profile" {
  description = "IAM instance profile to use for the EC2 instances"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID to use for the EC2 instances"
  type        = string
}