resource "random_id" "test_id" {
  byte_length = 4
}

module "ec2_test_instance" {
  source = "../../"

  providers = {
    aws.core-vpc = aws.core-vpc # core-vpc-(environment) holds the networking for all accounts
  }

  for_each = try(local.ec2_test.ec2_test_instances, {})

  name = "${each.key}${random_id.test_id.hex}"

  ami_name                      = each.value.ami_name
  ami_owner                     = try(each.value.ami_owner, "core-shared-services-production")
  instance                      = merge(local.ec2_test.instance, lookup(each.value, "instance", {}))
  ebs_volumes_copy_all_from_ami = try(each.value.ebs_volumes_copy_all_from_ami, true)
  ebs_volume_config             = lookup(each.value, "ebs_volume_config", {})
  ebs_volumes                   = lookup(each.value, "ebs_volumes", {})
  ebs_volume_tags               = lookup(each.value, "ebs_volume_tags", {})
  ssm_parameters_prefix         = lookup(each.value, "ssm_parameters_prefix", "test/")
  ssm_parameters                = lookup(each.value, "ssm_parameters", null)
  route53_records               = merge(local.ec2_test.route53_records, lookup(each.value, "route53_records", {}))

  iam_resource_names_prefix = "ec2-test-instance${random_id.test_id.hex}"
  instance_profile_policies = local.ec2_common_managed_policies

  business_unit            = local.business_unit
  application_name         = local.application_name
  environment              = local.environment
  region                   = local.region
  availability_zone        = local.availability_zone_1
  subnet_id                = data.aws_subnet.private_subnets_a.id
  tags                     = merge(local.tags, local.ec2_test.tags, try(each.value.tags, {}))
  account_ids_lookup       = local.environment_management.account_ids
  cloudwatch_metric_alarms = {}
}

