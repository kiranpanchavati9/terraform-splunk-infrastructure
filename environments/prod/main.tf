module "splunk_security_group" {
    source = "../../modules/security-group"
    
    vpc_id = var.vpc_id
    security_group_name = var.security_group_name
    security_group_description = var.security_group_description
    cidr_ipv4 = var.cidr_ipv4
    ip_protocol = var.ip_protocol
    management_port = var.management_port
    receiving_port = var.receiving_port
    web_interface_port = var.web_interface_port
    api_port = var.api_port
}

module "splunk_iam" {
    source = "../../modules/iam"
    role_name = var.role_name
    profile_name = var.profile_name
    managed_policy_arns = var.managed_policy_arns
    tags = var.tags
}


module "splunk_ec2" {
    source = "../../modules/ec2"
    component_names = var.component_names
    security_group_id = module.splunk_security_group.security_group_id
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    iam_instance_profile = module.splunk_iam.instance_profile_name
    tags = var.tags
}