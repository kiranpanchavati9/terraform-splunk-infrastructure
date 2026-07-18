vpc_id = "vpc-0fcbf944165ec4597"
cidr_ipv4 = "0.0.0.0/0"
security_group_name = "splunk-prod-sg"
security_group_description = "Splunk Production Security Group"
ip_protocol = "tcp"
management_port = 8089
receiving_port = 9997
web_interface_port = 8000
api_port = 443
role_name = "splunk-prod-role"
profile_name = "splunk-prod-profile"

component_names = {
  "splunk-prod-license-master" = ""
  "splunk-prod-universalforwarder" = ""
  "splunk-prod-deployment-server" = ""
  "splunk-prod-heavyforwarder" = ""
  "splunk-prod-cluster-master" = ""
  "splunk-prod-indexer1" = ""
  "splunk-prod-indexer2" = ""
  "splunk-prod-search-head-1" = ""
  "splunk-prod-search-head-2" = ""
  "splunk-prod-monitoring-console" = ""
  "splunk-prod-search-head-3" = ""
  "splunk-prod-deployer" = ""
}


ami = "ami-00adafae70b8029d8"
instance_type = "t3.small"
key_name = "aws-helpag"
iam_instance_profile = "splunk-prod-profile"
managed_policy_arns = ["arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"]
tags = {
  Environment = "Production"
  Project     = "Splunk"
  Team        = "DevOps"
  CreatedBy   = "Terraform"
  CreatedAt   = "2026-07-18"
  UpdatedAt   = "2026-07-18"
}
