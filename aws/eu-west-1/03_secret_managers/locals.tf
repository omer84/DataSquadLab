################################################################################
# Tags for the ASG to support cluster-autoscaler scale up from 0
################################################################################

locals {

  name_prefix = "${var.prefix}s3-${var.environment}-${var.region}"

  env = {
    account_id  = data.aws_caller_identity.current.account_id
    region      = data.aws_region.current.name
    environment = var.environment
  }

  default_tags = {
    Region      = data.aws_region.current.name
    Environment = var.environment
    Owner       = "DATA_TEAM"
    Project     = "INFRA"
    Stage       = "INFRA"
    ManagedBy   = var.ManagedBy
    CostCenter  = "DATALAKE"
    Repository  = "https://github.com/terraform-aws-modules/terraform-aws-secrets-manager"
  }
}
