################################################################################
# VPC
################################################################################

output "vpc_id" {
  description = "The ID of the VPC"
  value       = try(module.aws_vpc[0].vpc_id, null)
}

output "vpc_arn" {
  description = "The ARN of the VPC"
  value       = try(module.aws_vpc[0].vpc_arn, null)
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = try(module.aws_vpc[0].vpc_cidr_block, null)
}

output "default_security_group_id" {
  description = "The ID of the security group created by default on VPC creation"
  value       = try(module.aws_vpc[0].default_security_group_id, null)
}

output "default_network_acl_id" {
  description = "The ID of the default network ACL"
  value       = try(module.aws_vpc[0].default_network_acl_id, null)
}

output "default_route_table_id" {
  description = "The ID of the default route table"
  value       = try(module.aws_vpc[0].default_route_table_id, null)
}

output "vpc_instance_tenancy" {
  description = "Tenancy of instances spin up within VPC"
  value       = try(module.aws_vpc[0].vpc_instance_tenancy, null)
}

output "vpc_enable_dns_support" {
  description = "Whether or not the VPC has DNS support"
  value       = try(module.aws_vpc[0].vpc_enable_dns_support, null)
}

output "vpc_enable_dns_hostnames" {
  description = "Whether or not the VPC has DNS hostname support"
  value       = try(module.aws_vpc[0].vpc_enable_dns_hostnames, null)
}

output "vpc_main_route_table_id" {
  description = "The ID of the main route table associated with this VPC"
  value       = try(module.aws_vpc[0].vpc_main_route_table_id, null)
}

output "vpc_ipv6_association_id" {
  description = "The association ID for the IPv6 CIDR block"
  value       = try(module.aws_vpc[0].vpc_ipv6_association_id, null)
}

output "vpc_ipv6_cidr_block" {
  description = "The IPv6 CIDR block"
  value       = try(module.aws_vpc[0].vpc_ipv6_cidr_block, null)
}

output "vpc_secondary_cidr_blocks" {
  description = "List of secondary CIDR blocks of the VPC"
  value       = try(module.aws_vpc[0].vpc_secondary_cidr_blocks, null)
}

output "vpc_owner_id" {
  description = "The ID of the AWS account that owns the VPC"
  value       = try(module.aws_vpc[0].vpc_owner_id, null)
}

################################################################################
# DHCP Options Set
################################################################################

output "dhcp_options_id" {
  description = "The ID of the DHCP options"
  value       = try(module.aws_vpc[0].dhcp_options_id, null)
}

################################################################################
# Internet Gateway
################################################################################

output "igw_id" {
  description = "The ID of the Internet Gateway"
  value       = try(module.aws_vpc[0].igw_id, null)
}

output "igw_arn" {
  description = "The ARN of the Internet Gateway"
  value       = try(module.aws_vpc[0].igw_arn, null)
}

################################################################################
# Publiс Subnets
################################################################################

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.aws_vpc[0].public_subnets
}

output "public_subnet_arns" {
  description = "List of ARNs of public subnets"
  value       = module.aws_vpc[0].public_subnet_arns
}

output "public_subnets_cidr_blocks" {
  description = "List of cidr_blocks of public subnets"
  value       = module.aws_vpc[0].public_subnets_cidr_blocks
}

output "public_subnets_ipv6_cidr_blocks" {
  description = "List of IPv6 cidr_blocks of public subnets in an IPv6 enabled VPC"
  value       = module.aws_vpc[0].public_subnets_ipv6_cidr_blocks
}

output "public_route_table_ids" {
  description = "List of IDs of public route tables"
  value       = module.aws_vpc[0].public_route_table_ids
}

output "public_internet_gateway_route_id" {
  description = "ID of the internet gateway route"
  value       = try(module.aws_vpc[0].public_internet_gateway_route_id, null)
}

output "public_internet_gateway_ipv6_route_id" {
  description = "ID of the IPv6 internet gateway route"
  value       = try(module.aws_vpc[0].public_internet_gateway_ipv6_route_id, null)
}

output "public_route_table_association_ids" {
  description = "List of IDs of the public route table association"
  value       = module.aws_vpc[0].public_route_table_association_ids
}

output "public_network_acl_id" {
  description = "ID of the public network ACL"
  value       = try(module.aws_vpc[0].public_network_acl_id, null)
}

output "public_network_acl_arn" {
  description = "ARN of the public network ACL"
  value       = try(module.aws_vpc[0].public_network_acl_arn, null)
}

################################################################################
# Private Subnets
################################################################################

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.aws_vpc[0].private_subnets
}

output "private_subnet_arns" {
  description = "List of ARNs of private subnets"
  value       = module.aws_vpc[0].private_subnet_arns
}

output "private_subnets_cidr_blocks" {
  description = "List of cidr_blocks of private subnets"
  value       = module.aws_vpc[0].private_subnets_cidr_blocks
}

output "private_subnets_ipv6_cidr_blocks" {
  description = "List of IPv6 cidr_blocks of private subnets in an IPv6 enabled VPC"
  value       = module.aws_vpc[0].private_subnets_ipv6_cidr_blocks
}

output "private_route_table_ids" {
  description = "List of IDs of private route tables"
  value       = module.aws_vpc[0].private_route_table_ids
}

output "private_nat_gateway_route_ids" {
  description = "List of IDs of the private nat gateway route"
  value       = module.aws_vpc[0].private_nat_gateway_route_ids
}

output "private_ipv6_egress_route_ids" {
  description = "List of IDs of the ipv6 egress route"
  value       = module.aws_vpc[0].private_ipv6_egress_route_ids
}

output "private_route_table_association_ids" {
  description = "List of IDs of the private route table association"
  value       = module.aws_vpc[0].private_route_table_association_ids
}

output "private_network_acl_id" {
  description = "ID of the private network ACL"
  value       = try(module.aws_vpc[0].private_network_acl_id, null)
}

output "private_network_acl_arn" {
  description = "ARN of the private network ACL"
  value       = try(module.aws_vpc[0].private_network_acl_arn, null)
}

################################################################################
# Outpost Subnets
################################################################################

output "outpost_subnets" {
  description = "List of IDs of outpost subnets"
  value       = module.aws_vpc[0].outpost_subnets
}

output "outpost_subnet_arns" {
  description = "List of ARNs of outpost subnets"
  value       = module.aws_vpc[0].outpost_subnet_arns
}

output "outpost_subnets_cidr_blocks" {
  description = "List of cidr_blocks of outpost subnets"
  value       = module.aws_vpc[0].outpost_subnets_cidr_blocks
}

output "outpost_subnets_ipv6_cidr_blocks" {
  description = "List of IPv6 cidr_blocks of outpost subnets in an IPv6 enabled VPC"
  value       = module.aws_vpc[0].outpost_subnets_ipv6_cidr_blocks
}

output "outpost_network_acl_id" {
  description = "ID of the outpost network ACL"
  value       = try(module.aws_vpc[0].outpost_network_acl_id, null)
}

output "outpost_network_acl_arn" {
  description = "ARN of the outpost network ACL"
  value       = try(module.aws_vpc[0].outpost_network_acl_arn, null)
}

################################################################################
# Database Subnets
################################################################################

output "database_subnets" {
  description = "List of IDs of database subnets"
  value       = module.aws_vpc[0].database_subnets
}

output "database_subnet_arns" {
  description = "List of ARNs of database subnets"
  value       = module.aws_vpc[0].database_subnet_arns
}

output "database_subnets_cidr_blocks" {
  description = "List of cidr_blocks of database subnets"
  value       = module.aws_vpc[0].database_subnets_cidr_blocks
}

output "database_subnets_ipv6_cidr_blocks" {
  description = "List of IPv6 cidr_blocks of database subnets in an IPv6 enabled VPC"
  value       = module.aws_vpc[0].database_subnets_ipv6_cidr_blocks
}

output "database_subnet_group" {
  description = "ID of database subnet group"
  value       = module.aws_vpc[0].database_subnet_group
}

output "database_subnet_group_name" {
  description = "Name of database subnet group"
  value       = module.aws_vpc[0].database_subnet_group_name
}

output "database_route_table_ids" {
  description = "List of IDs of database route tables"
  value       = module.aws_vpc[0].database_route_table_ids
}

output "database_internet_gateway_route_id" {
  description = "ID of the database internet gateway route"
  value       = module.aws_vpc[0].database_internet_gateway_route_id
}

output "database_nat_gateway_route_ids" {
  description = "List of IDs of the database nat gateway route"
  value       = module.aws_vpc[0].database_nat_gateway_route_ids
}

output "database_ipv6_egress_route_id" {
  description = "ID of the database IPv6 egress route"
  value       = module.aws_vpc[0].database_ipv6_egress_route_id
}

output "database_route_table_association_ids" {
  description = "List of IDs of the database route table association"
  value       = module.aws_vpc[0].database_route_table_association_ids
}

output "database_network_acl_id" {
  description = "ID of the database network ACL"
  value       = try(module.aws_vpc[0].database_network_acl_id, null)
}

output "database_network_acl_arn" {
  description = "ARN of the database network ACL"
  value       = try(module.aws_vpc[0].database_network_acl_arn, null)
}

################################################################################
# Redshift Subnets
################################################################################

output "redshift_subnets" {
  description = "List of IDs of redshift subnets"
  value       = module.aws_vpc[0].redshift_subnets
}

output "redshift_subnet_arns" {
  description = "List of ARNs of redshift subnets"
  value       = module.aws_vpc[0].redshift_subnet_arns
}

output "redshift_subnets_cidr_blocks" {
  description = "List of cidr_blocks of redshift subnets"
  value       = module.aws_vpc[0].redshift_subnets_cidr_blocks
}

output "redshift_subnets_ipv6_cidr_blocks" {
  description = "List of IPv6 cidr_blocks of redshift subnets in an IPv6 enabled VPC"
  value       = module.aws_vpc[0].redshift_subnets_ipv6_cidr_blocks
}

output "redshift_subnet_group" {
  description = "ID of redshift subnet group"
  value       = module.aws_vpc[0].redshift_subnet_group
}

output "redshift_route_table_ids" {
  description = "List of IDs of redshift route tables"
  value       = module.aws_vpc[0].redshift_route_table_ids
}

output "redshift_route_table_association_ids" {
  description = "List of IDs of the redshift route table association"
  value       = module.aws_vpc[0].redshift_route_table_association_ids
}

output "redshift_public_route_table_association_ids" {
  description = "List of IDs of the public redshift route table association"
  value       = module.aws_vpc[0].redshift_public_route_table_association_ids
}

output "redshift_network_acl_id" {
  description = "ID of the redshift network ACL"
  value       = module.aws_vpc[0].redshift_network_acl_id
}

output "redshift_network_acl_arn" {
  description = "ARN of the redshift network ACL"
  value       = module.aws_vpc[0].redshift_network_acl_arn
}

################################################################################
# Elasticache Subnets
################################################################################

output "elasticache_subnets" {
  description = "List of IDs of elasticache subnets"
  value       = module.aws_vpc[0].elasticache_subnets
}

output "elasticache_subnet_arns" {
  description = "List of ARNs of elasticache subnets"
  value       = module.aws_vpc[0].elasticache_subnet_arns
}

output "elasticache_subnets_cidr_blocks" {
  description = "List of cidr_blocks of elasticache subnets"
  value       = module.aws_vpc[0].elasticache_subnets_cidr_blocks
}

output "elasticache_subnets_ipv6_cidr_blocks" {
  description = "List of IPv6 cidr_blocks of elasticache subnets in an IPv6 enabled VPC"
  value       = module.aws_vpc[0].elasticache_subnets_ipv6_cidr_blocks
}

output "elasticache_subnet_group" {
  description = "ID of elasticache subnet group"
  value       = module.aws_vpc[0].elasticache_subnet_group
}

output "elasticache_subnet_group_name" {
  description = "Name of elasticache subnet group"
  value       = module.aws_vpc[0].elasticache_subnet_group_name
}

output "elasticache_route_table_ids" {
  description = "List of IDs of elasticache route tables"
  value       = module.aws_vpc[0].elasticache_route_table_ids
}

output "elasticache_route_table_association_ids" {
  description = "List of IDs of the elasticache route table association"
  value       = module.aws_vpc[0].elasticache_route_table_association_ids
}

output "elasticache_network_acl_id" {
  description = "ID of the elasticache network ACL"
  value       = module.aws_vpc[0].elasticache_network_acl_id
}

output "elasticache_network_acl_arn" {
  description = "ARN of the elasticache network ACL"
  value       = module.aws_vpc[0].elasticache_network_acl_arn
}

################################################################################
# Intra Subnets
################################################################################

output "intra_subnets" {
  description = "List of IDs of intra subnets"
  value       = module.aws_vpc[0].intra_subnets
}

output "intra_subnet_arns" {
  description = "List of ARNs of intra subnets"
  value       = module.aws_vpc[0].intra_subnet_arns
}

output "intra_subnets_cidr_blocks" {
  description = "List of cidr_blocks of intra subnets"
  value       = module.aws_vpc[0].intra_subnets_cidr_blocks
}

output "intra_subnets_ipv6_cidr_blocks" {
  description = "List of IPv6 cidr_blocks of intra subnets in an IPv6 enabled VPC"
  value       = module.aws_vpc[0].intra_subnets_ipv6_cidr_blocks
}

output "intra_route_table_ids" {
  description = "List of IDs of intra route tables"
  value       = module.aws_vpc[0].intra_route_table_ids
}

output "intra_route_table_association_ids" {
  description = "List of IDs of the intra route table association"
  value       = module.aws_vpc[0].intra_route_table_association_ids
}

output "intra_network_acl_id" {
  description = "ID of the intra network ACL"
  value       = module.aws_vpc[0].intra_network_acl_id
}

output "intra_network_acl_arn" {
  description = "ARN of the intra network ACL"
  value       = module.aws_vpc[0].intra_network_acl_arn
}

################################################################################
# NAT Gateway
################################################################################

output "nat_ids" {
  description = "List of allocation ID of Elastic IPs created for AWS NAT Gateway"
  value       = module.aws_vpc[0].nat_ids
}

output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = module.aws_vpc[0].nat_public_ips
}

output "natgw_ids" {
  description = "List of NAT Gateway IDs"
  value       = module.aws_vpc[0].natgw_ids
}

################################################################################
# Egress Only Gateway
################################################################################

output "egress_only_internet_gateway_id" {
  description = "The ID of the egress only Internet Gateway"
  value       = module.aws_vpc[0].egress_only_internet_gateway_id
}

################################################################################
# Customer Gateway
################################################################################

output "cgw_ids" {
  description = "List of IDs of Customer Gateway"
  value       = module.aws_vpc[0].cgw_ids
}

output "cgw_arns" {
  description = "List of ARNs of Customer Gateway"
  value       = module.aws_vpc[0].cgw_arns
}

output "this_customer_gateway" {
  description = "Map of Customer Gateway attributes"
  value       = module.aws_vpc[0].this_customer_gateway
}

################################################################################
# VPN Gateway
################################################################################

output "vgw_id" {
  description = "The ID of the VPN Gateway"
  value       = module.aws_vpc[0].vgw_id
}

output "vgw_arn" {
  description = "The ARN of the VPN Gateway"
  value       = module.aws_vpc[0].vgw_arn
}

################################################################################
# Default VPC
################################################################################

output "default_vpc_id" {
  description = "The ID of the Default VPC"
  value       = module.aws_vpc[0].default_vpc_id
}

output "default_vpc_arn" {
  description = "The ARN of the Default VPC"
  value       = module.aws_vpc[0].default_vpc_arn
}

output "default_vpc_cidr_block" {
  description = "The CIDR block of the Default VPC"
  value       = module.aws_vpc[0].default_vpc_cidr_block
}

output "default_vpc_default_security_group_id" {
  description = "The ID of the security group created by default on Default VPC creation"
  value       = module.aws_vpc[0].default_vpc_default_security_group_id
}

output "default_vpc_default_network_acl_id" {
  description = "The ID of the default network ACL of the Default VPC"
  value       = module.aws_vpc[0].default_vpc_default_network_acl_id
}

output "default_vpc_default_route_table_id" {
  description = "The ID of the default route table of the Default VPC"
  value       = module.aws_vpc[0].default_vpc_default_route_table_id
}

output "default_vpc_instance_tenancy" {
  description = "Tenancy of instances spin up within Default VPC"
  value       = module.aws_vpc[0].default_vpc_instance_tenancy
}

output "default_vpc_enable_dns_support" {
  description = "Whether or not the Default VPC has DNS support"
  value       = module.aws_vpc[0].default_vpc_enable_dns_support
}

output "default_vpc_enable_dns_hostnames" {
  description = "Whether or not the Default VPC has DNS hostname support"
  value       = module.aws_vpc[0].default_vpc_enable_dns_hostnames
}

output "default_vpc_main_route_table_id" {
  description = "The ID of the main route table associated with the Default VPC"
  value       = module.aws_vpc[0].default_vpc_main_route_table_id
}

################################################################################
# VPC Flow Log
################################################################################

output "vpc_flow_log_id" {
  description = "The ID of the Flow Log resource"
  value       = module.aws_vpc[0].vpc_flow_log_id
}

output "vpc_flow_log_destination_arn" {
  description = "The ARN of the destination for VPC Flow Logs"
  value       = module.aws_vpc[0].vpc_flow_log_destination_arn
}

output "vpc_flow_log_destination_type" {
  description = "The type of the destination for VPC Flow Logs"
  value       = module.aws_vpc[0].vpc_flow_log_destination_type
}

output "vpc_flow_log_cloudwatch_iam_role_arn" {
  description = "The ARN of the IAM role used when pushing logs to Cloudwatch log group"
  value       = module.aws_vpc[0].vpc_flow_log_cloudwatch_iam_role_arn
}

################################################################################
# Static values (arguments)
################################################################################

output "azs" {
  description = "A list of availability zones specified as argument to this module"
  value       = module.aws_vpc[0].azs
}

output "name" {
  description = "The name of the VPC specified as argument to this module"
  value       = module.aws_vpc[0].name
}