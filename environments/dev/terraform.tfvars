vpc_id = "vpc-0fcbf944165ec4597"
cidr_ipv4 = "0.0.0.0/0"
security_group_name = "splunk-dev-sg"
security_group_description = "Splunk Development Security Group" 
ip_protocol = "tcp"
management_port = 8089
receiving_port = 9997
web_interface_port = 8000
api_port = 443
role_name = "splunk-dev-role"
profile_name = "splunk-dev-profile"
component_names = [
  "splunk-dev-license-master",
  "splunk-dev-universalforwarder",
  "splunk-dev-deployment-server",
  "splunk-dev-heavyforwarder",
  "splunk-dev-cluster-master",
  "splunk-dev-indexer1",
  "splunk-dev-indexer2",
  "splunk-dev-search-head-1",
  "splunk-dev-search-head-2",
  "splunk-dev-search-head-3",
  "splunk-dev-monitoring-console",
  "splunk-dev-deployer"
]

ami = "ami-00adafae70b8029d8"
instance_type = "t3.small"
key_name = "aws-helpag"
managed_policy_arns = ["arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"]
tags = {
  Environment = "Development"
  Project     = "Splunk"
  Team        = "DevOps"
  CreatedBy   = "Terraform"
  CreatedAt   = "2026-07-18"
  UpdatedAt   = "2026-07-18"
}