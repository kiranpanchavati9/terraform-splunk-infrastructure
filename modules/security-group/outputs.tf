output "security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.this_security_group.id
}

output "security_group_name" {
  description = "The name of the security group"
  value       = aws_security_group.this_security_group.name
}

output "security_group_description" {
  description = "The description of the security group"
  value       = aws_security_group.this_security_group.description
}

output "security_group_vpc_id" {
  description = "The VPC ID of the security group"
  value       = aws_security_group.this_security_group.vpc_id
}

output "security_group_ingress_rules" {
  description = "The ingress rules of the security group"
  value       = aws_security_group.this_security_group.ingress
}

output "security_group_egress_rules" {
  description = "The egress rules of the security group"
  value       = aws_security_group.this_security_group.egress
}

output "security_group_tags" {
  description = "The tags of the security group"
  value       = aws_security_group.this_security_group.tags
}