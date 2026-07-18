output "instance_ids" {
  description = "The IDs of the EC2 instances"
  value       = aws_instance.instance[*].id
}

output "instance_arns" {
  description = "The ARNs of the EC2 instances"
  value       = aws_instance.instance[*].arn
}

output "instance_names" {
  description = "The names of the EC2 instances"
  value       = aws_instance.instance[*].name
}

output "instance_public_ips" {
  description = "The public IPs of the EC2 instances"
  value       = aws_instance.instance[*].public_ip
}

output "instance_private_ips" {
  description = "The private IPs of the EC2 instances"
  value       = aws_instance.instance[*].private_ip
}

output "instance_security_group_ids" {
  description = "The security group IDs of the EC2 instances"
  value       = aws_instance.instance[*].security_group_ids
}

output "instance_security_group_names" {
  description = "The security group names of the EC2 instances"
  value       = aws_instance.instance[*].security_group_names
}

output "instance_security_group_descriptions" {
  description = "The security group descriptions of the EC2 instances"
  value       = aws_instance.instance[*].security_group_descriptions
}