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

components = {
  indexer1 = {
    name = "splunk-prod-indexer1"
    user_data = "../../cloud-init/indexer.yml"
  }
  indexer2 = {
    name = "splunk-prod-indexer2"
    user_data = "../../cloud-init/indexer.yml"
  }
  search_head1 = {
    name = "splunk-prod-search-head-1"
    user_data = "../../cloud-init/search-head.yml"
  }
  search_head2 = {
    name = "splunk-prod-search-head-2"
    user_data = "../../cloud-init/search-head.yml"
  }
  search_head3 = {
    name = "splunk-prod-search-head-3"
    user_data = "../../cloud-init/search-head.yml"
  }
  monitoring_console = {
    name = "splunk-prod-monitoring-console"
    user_data = "../../cloud-init/splunk-monitoringconsole.yml"
  }
  deployer = {
    name = "splunk-prod-deployer"
    user_data = "../../cloud-init/splunk-deployer.yml"
  }
  license_master = {
    name = "splunk-prod-license-master"
    user_data = "../../cloud-init/splunk-license-master.yml"
  }
  universalforwarder = {
    name = "splunk-prod-universalforwarder"
    user_data = "../../cloud-init/splunk-uf.yml"
  }
  deployment_server = {
    name = "splunk-prod-deployment-server"
    user_data = "../../cloud-init/splunk-deployment-server.yml"
  }
  heavyforwarder = {
    name = "splunk-prod-heavyforwarder"
    user_data = "../../cloud-init/splunk-hf.yml"
  }
  cluster_master = {
    name = "splunk-prod-cluster-master"
    user_data = "../../cloud-init/splunk-cluster-master.yml"
  }
}

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
