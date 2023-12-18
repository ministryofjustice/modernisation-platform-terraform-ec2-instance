# Modernisation Platform Terraform EC2 Instance

[![repo standards badge](https://img.shields.io/endpoint?labelColor=231f20&color=005ea5&style=for-the-badge&label=MoJ%20Compliant&url=https%3A%2F%2Foperations-engineering-reports.cloud-platform.service.justice.gov.uk%2Fapi%2Fv1%2Fcompliant_public_repositories%2Fendpoint%2Fmodernisation-platform-terraform-ec2-instance&logo=data:image/png;base64,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)](https://operations-engineering-reports.cloud-platform.service.justice.gov.uk/public-report/modernisation-platform-terraform-ec2-instance)

## Usage

```hcl

module "ec2_test_instance" {
  source = "github.com/ministryofjustice/modernisation-platform-terraform-ec2-instance"

  providers = {
    aws.core-vpc = aws.core-vpc # core-vpc-(environment) holds the networking for all accounts
  }

  for_each = try(local.ec2_test.ec2_test_instances, {})

  name = each.key

  ami_name                      = each.value.ami_name
  ami_owner                     = try(each.value.ami_owner, "core-shared-services-production")
  instance                      = merge(local.ec2_test.instance, lookup(each.value, "instance", {}))
  ebs_volumes_copy_all_from_ami = try(each.value.ebs_volumes_copy_all_from_ami, true)
  ebs_kms_key_id                = module.environment.kms_keys["ebs"].arn
  ebs_volume_config             = lookup(each.value, "ebs_volume_config", {})
  ebs_volumes                   = lookup(each.value, "ebs_volumes", {})
  ebs_volume_tags               = lookup(each.value, "ebs_volume_tags", {})
  ssm_parameters_prefix         = lookup(each.value, "ssm_parameters_prefix", "test/")
  ssm_parameters                = lookup(each.value, "ssm_parameters", null)
  route53_records               = merge(local.ec2_test.route53_records, lookup(each.value, "route53_records", {}))

  iam_resource_names_prefix = "ec2-test-instance"
  instance_profile_policies = local.ec2_common_managed_policies

  business_unit            = local.business_unit
  application_name         = local.application_name
  environment              = local.environment
  region                   = local.region
  availability_zone        = local.availability_zone_1
  subnet_id                = module.environment.subnet["private"][local.availability_zone_1].id
  tags                     = merge(local.tags, local.ec2_test.tags, try(each.value.tags, {}))
  account_ids_lookup       = local.environment_management.account_ids
  cloudwatch_metric_alarms = {}
}

```
For a deployed example, please check [example](https://github.com/ministryofjustice/modernisation-platform-environments/blob/main/terraform/environments/example/ec2.tf#L233)

### Setting backup tags
Read [the Modernisation Platform backup functionality](https://user-guide.modernisation-platform.service.justice.gov.uk/concepts/environments/backups.html#backups) to understand how the backup plan works.
The following is a summary of the backup behaviour based on the tags that are set and passed in this module.

#### Production environment
By default, all production resources (EC2 and EBS) will be backed up. This is determined by the `is-production` tag being set to `true`.
Production backups can be skipped by setting `backup` tag to `false` (passed in `tags` input).

#### Non-production environments
Additionally, you are able to control backups in non-production environments by setting `backup` tag to `true` (passed in `tags` input).

#### Backup duplication problem
NOTE, setting `backup` tag to `true` that is passed in `tags` input will set `backup` tag to `true` on all EC2 and EBS resources.
This will result in duplicated backups as EBS resources that are part of an EC2 will get backed up during the EC2 backup and EBS backup selection by the backup plan.

In order to select either EC2 backups or EBS backups it is possible to set `backup` tag to `true` on only EC2 instance, by passing the tag as part of the `instance.tags` input or setting the `backup` tag to `true` on only EBS by setting the `backup` tag to `true` and passing it in the `ebs_volume_tags` input.
NOTE, if the `backup` tag is passed in `tags` and `instance.tags`/`ebs_volume_tags`, the tag set on the specific resources will take priority.
For example, `backup` tag is set to:
* `true` via `tags` input
* `false` via `instance.tags` input
* `true` via `ebs_volume_tags` input
will result in:
* EC2 not being backed up
* all EBS being backed up (that includes root ebs, inline ebs and attached ebs).

## Looking for issues?
If you're looking to raise an issue with this module, please create a new issue in the [Modernisation Platform repository](https://github.com/ministryofjustice/modernisation-platform/issues).

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |
| <a name="requirement_cloudinit"></a> [cloudinit](#requirement\_cloudinit) | ~> 2.2.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | > 0.9.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.0 |
| <a name="provider_aws.core-vpc"></a> [aws.core-vpc](#provider\_aws.core-vpc) | ~> 5.0 |
| <a name="provider_cloudinit"></a> [cloudinit](#provider\_cloudinit) | ~> 2.2.0 |
| <a name="provider_random"></a> [random](#provider\_random) | ~> 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_metric_alarm.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_ebs_volume.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ebs_volume) | resource |
| [aws_eip.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_eip_association.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip_association) | resource |
| [aws_iam_instance_profile.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.ssm_params_and_secrets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_instance.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_route53_record.external](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.internal](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_secretsmanager_secret.fixed](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret.placeholder](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.fixed](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [aws_ssm_parameter.placeholder](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_volume_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/volume_attachment) | resource |
| [random_password.secrets](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [random_password.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [aws_ami.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_ec2_instance_type.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ec2_instance_type) | data source |
| [aws_iam_policy_document.ssm_params_and_secrets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_route53_zone.external](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |
| [aws_route53_zone.internal](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |
| [cloudinit_config.this](https://registry.terraform.io/providers/hashicorp/cloudinit/latest/docs/data-sources/config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_ids_lookup"></a> [account\_ids\_lookup](#input\_account\_ids\_lookup) | A map of account names to account ids that can be used for AMI owner | `map(any)` | `{}` | no |
| <a name="input_ami_name"></a> [ami\_name](#input\_ami\_name) | Name of AMI to be used to launch the database ec2 instance | `string` | n/a | yes |
| <a name="input_ami_owner"></a> [ami\_owner](#input\_ami\_owner) | Owner of AMI to be used to launch the database ec2 instance | `string` | `"self"` | no |
| <a name="input_application_name"></a> [application\_name](#input\_application\_name) | The name of the application.  This will be name of the environment in Modernisation Platform | `string` | `"nomis"` | no |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | The availability zone in which to deploy the infrastructure | `string` | `"eu-west-2a"` | no |
| <a name="input_business_unit"></a> [business\_unit](#input\_business\_unit) | This corresponds to the VPC in which the application resides | `string` | `"hmpps"` | no |
| <a name="input_cloudwatch_metric_alarms"></a> [cloudwatch\_metric\_alarms](#input\_cloudwatch\_metric\_alarms) | Map of cloudwatch metric alarms.  The alarm name is set to the ec2 instance name plus the map key. | <pre>map(object({<br>    comparison_operator = string<br>    evaluation_periods  = number<br>    metric_name         = string<br>    namespace           = string<br>    period              = number<br>    statistic           = string<br>    threshold           = number<br>    alarm_actions       = list(string)<br>    actions_enabled     = optional(bool, false)<br>    alarm_description   = optional(string)<br>    datapoints_to_alarm = optional(number)<br>    treat_missing_data  = optional(string, "missing")<br>    dimensions          = optional(map(string), {})<br>  }))</pre> | `{}` | no |
| <a name="input_ebs_kms_key_id"></a> [ebs\_kms\_key\_id](#input\_ebs\_kms\_key\_id) | KMS Key to use for EBS volumes if not explicitly set in ebs\_volumes variable | `string` | `null` | no |
| <a name="input_ebs_volume_config"></a> [ebs\_volume\_config](#input\_ebs\_volume\_config) | EC2 volume configurations, where key is a label, e.g. flash, which is assigned to the disk in ebs\_volumes.  All disks with same label have the same configuration.  If not specified, use values from the AMI.  If total\_size specified, the volume size is this divided by the number of drives with the given label | <pre>map(object({<br>    iops       = optional(number)<br>    throughput = optional(number)<br>    total_size = optional(number)<br>    type       = optional(string)<br>    kms_key_id = optional(string)<br>  }))</pre> | n/a | yes |
| <a name="input_ebs_volume_tags"></a> [ebs\_volume\_tags](#input\_ebs\_volume\_tags) | Additional tags to apply to ebs volumes | `map(string)` | `{}` | no |
| <a name="input_ebs_volumes"></a> [ebs\_volumes](#input\_ebs\_volumes) | EC2 volumes, see aws\_ebs\_volume for documentation.  key=volume name, value=ebs\_volume\_config key.  label is used as part of the Name tag | <pre>map(object({<br>    label       = optional(string)<br>    snapshot_id = optional(string)<br>    iops        = optional(number)<br>    throughput  = optional(number)<br>    size        = optional(number)<br>    type        = optional(string)<br>    kms_key_id  = optional(string)<br>  }))</pre> | n/a | yes |
| <a name="input_ebs_volumes_copy_all_from_ami"></a> [ebs\_volumes\_copy\_all\_from\_ami](#input\_ebs\_volumes\_copy\_all\_from\_ami) | If true, ensure all volumes in AMI are also present in EC2.  If false, only create volumes specified in ebs\_volumes var | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Application environment - i.e. the terraform workspace | `string` | n/a | yes |
| <a name="input_iam_resource_names_prefix"></a> [iam\_resource\_names\_prefix](#input\_iam\_resource\_names\_prefix) | Prefix IAM resources with this prefix, e.g. ec2-database | `string` | `"ec2"` | no |
| <a name="input_instance"></a> [instance](#input\_instance) | EC2 instance settings, see aws\_instance documentation | <pre>object({<br>    associate_public_ip_address  = optional(bool, false)<br>    disable_api_termination      = bool<br>    disable_api_stop             = bool<br>    instance_type                = string<br>    key_name                     = string<br>    metadata_endpoint_enabled    = optional(string, "enabled")<br>    metadata_options_http_tokens = optional(string, "required")<br>    monitoring                   = optional(bool, true)<br>    ebs_block_device_inline      = optional(bool, false)<br>    vpc_security_group_ids       = list(string)<br>    private_dns_name_options = optional(object({<br>      enable_resource_name_dns_aaaa_record = optional(bool)<br>      enable_resource_name_dns_a_record    = optional(bool)<br>      hostname_type                        = string<br>    }))<br>    tags = optional(map(string), {})<br>  })</pre> | n/a | yes |
| <a name="input_instance_profile_policies"></a> [instance\_profile\_policies](#input\_instance\_profile\_policies) | A list of managed IAM policy document ARNs to be attached to the database instance profile | `list(string)` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Provide a unique name for the instance | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Destination AWS Region for the infrastructure | `string` | `"eu-west-2"` | no |
| <a name="input_route53_records"></a> [route53\_records](#input\_route53\_records) | Optionally create internal and external DNS records | <pre>object({<br>    create_internal_record = bool<br>    create_external_record = bool<br>  })</pre> | n/a | yes |
| <a name="input_secretsmanager_secrets"></a> [secretsmanager\_secrets](#input\_secretsmanager\_secrets) | A map of secretsmanager secrets to create. Set a specific value or a randomly generated value.  If neither random or value are set, a placeholder value is created which can be updated outside of terraform | <pre>map(object({<br>    description             = optional(string)<br>    kms_key_id              = optional(string)<br>    recovery_window_in_days = optional(number)<br>    random = optional(object({<br>      length  = number<br>      special = optional(bool)<br>    }))<br>    value = optional(string)<br>  }))</pre> | `null` | no |
| <a name="input_secretsmanager_secrets_prefix"></a> [secretsmanager\_secrets\_prefix](#input\_secretsmanager\_secrets\_prefix) | Optionally prefix secretsmanager secrets with this prefix.  Add a trailing / | `string` | `""` | no |
| <a name="input_ssm_parameters"></a> [ssm\_parameters](#input\_ssm\_parameters) | A map of SSM parameters to create. Set a specific value or a randomly generated value.  If neither random or value are set, a placeholder value is created which can be updated outside of terraform | <pre>map(object({<br>    description = optional(string)<br>    type        = optional(string, "SecureString")<br>    kms_key_id  = optional(string)<br>    random = optional(object({<br>      length  = number<br>      special = optional(bool)<br>    }))<br>    value = optional(string)<br>  }))</pre> | `null` | no |
| <a name="input_ssm_parameters_prefix"></a> [ssm\_parameters\_prefix](#input\_ssm\_parameters\_prefix) | Optionally prefix ssm parameters with this prefix.  Add a trailing / | `string` | `""` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The subnet id in which to deploy the infrastructure | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to be applied to resources.  Additional tags can be added to EBS volumes or EC2s, see instance.tags and ebs\_volume\_tags variables. | `map(any)` | n/a | yes |
| <a name="input_user_data_cloud_init"></a> [user\_data\_cloud\_init](#input\_user\_data\_cloud\_init) | Use this instead of user\_data\_raw to run multiple scripts using cloud\_init | <pre>object({<br>    args    = optional(map(string))<br>    scripts = optional(list(string))<br>    write_files = optional(map(object({<br>      path        = string<br>      owner       = string<br>      permissions = string<br>    })), {})<br>  })</pre> | `null` | no |
| <a name="input_user_data_raw"></a> [user\_data\_raw](#input\_user\_data\_raw) | Base64 encoded user data, script or cloud formation template | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_ebs_volume"></a> [aws\_ebs\_volume](#output\_aws\_ebs\_volume) | aws\_ebs\_volume resource |
| <a name="output_aws_instance"></a> [aws\_instance](#output\_aws\_instance) | aws\_instance resource |
<!-- END_TF_DOCS -->
