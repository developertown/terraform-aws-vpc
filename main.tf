locals {
  enabled = var.enabled
  name    = "${var.name}-${var.environment}%{if var.suffix != ""}-${var.suffix}%{endif}"

  tags = merge({
    "Name"        = local.name,
    "Environment" = var.environment,
    "Terraform"   = "true"
  }, var.tags)
}

module "aws_vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"

  count = local.enabled ? 1 : 0

  name = local.name
  cidr = var.cidr

  azs                 = var.azs
  private_subnets     = var.private_subnets
  public_subnets      = var.public_subnets
  database_subnets    = var.database_subnets
  elasticache_subnets = var.elasticache_subnets
  intra_subnets       = var.intra_subnets

  private_subnet_names     = var.private_subnet_names
  public_subnet_names      = var.public_subnet_names
  database_subnet_names    = var.database_subnet_names
  elasticache_subnet_names = var.elasticache_subnet_names
  intra_subnet_names       = var.intra_subnet_names

  create_database_subnet_group  = var.create_database_subnet_group
  manage_default_network_acl    = var.manage_default_network_acl
  manage_default_route_table    = var.manage_default_route_table
  manage_default_security_group = var.manage_default_security_group

  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support

  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway

  customer_gateways = var.customer_gateways

  enable_vpn_gateway = var.enable_vpn_gateway

  enable_dhcp_options              = var.enable_dhcp_options
  dhcp_options_domain_name         = var.dhcp_options_domain_name
  dhcp_options_domain_name_servers = var.dhcp_options_domain_name_servers

  enable_flow_log                      = var.enable_flow_log
  create_flow_log_cloudwatch_log_group = var.create_flow_log_cloudwatch_log_group
  create_flow_log_cloudwatch_iam_role  = var.create_flow_log_cloudwatch_iam_role
  flow_log_max_aggregation_interval    = var.flow_log_max_aggregation_interval

  tags = local.tags
}