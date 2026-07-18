output "role_name" {
  description = "The name of the IAM Role"
  value       = aws_iam_role.this.name
}

output "profile_name" {
  description = "IAM Instance Profile Name"
  value       = aws_iam_instance_profile.this.name
}

output "role_arn" {
  description = "The ARN of the IAM Role"
  value       = aws_iam_role.this.arn
}

output "profile_arn" {
  description = "The ARN of the IAM Instance Profile"
  value       = aws_iam_instance_profile.this.arn
}