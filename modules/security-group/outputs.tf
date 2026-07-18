output "security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.allow_splunk_firewall_traffic_prod_dev.id
}

output "security_group_name" {
  description = "The name of the security group"
  value       = aws_security_group.allow_splunk_firewall_traffic_prod_dev.name
}

output "security_group_description" {
  description = "The description of the security group"
  value       = aws_security_group.allow_splunk_firewall_traffic_prod_dev.description
}

output "security_group_vpc_id" {
  description = "The VPC ID of the security group"
  value       = aws_security_group.allow_splunk_firewall_traffic_prod_dev.vpc_id
}

output "security_group_ingress_rules" {
  description = "The ingress rules of the security group"
  value       = aws_security_group.allow_splunk_firewall_traffic_prod_dev.ingress
}

output "security_group_egress_rules" {
  description = "The egress rules of the security group"
  value       = aws_security_group.allow_splunk_firewall_traffic_prod_dev.egress
}

output "security_group_tags" {
  description = "The tags of the security group"
  value       = aws_security_group.allow_splunk_firewall_traffic_prod_dev.tags
}