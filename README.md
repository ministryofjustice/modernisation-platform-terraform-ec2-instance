# Modernisation Platform Terraform EC2 Instance

[![repo standards badge](https://img.shields.io/endpoint?labelColor=231f20&color=005ea5&style=for-the-badge&label=MoJ%20Compliant&url=https%3A%2F%2Foperations-engineering-reports.cloud-platform.service.justice.gov.uk%2Fapi%2Fv1%2Fcompliant_public_repositories%2Fendpoint%2Fmodernisation-platform-terraform-ec2-instance&logo=data:image/png;base64,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)](https://operations-engineering-reports.cloud-platform.service.justice.gov.uk/public-report/modernisation-platform-terraform-ec2-instance)

## Usage

```hcl

# This self-contained example can be used to create EC2 instances using this module. Explanatory notes have been added
# that cover the key elements as well as known limitations & issues. This example was developed and tested using the cooker environment
# but should work just as well in any other member environment in modernisation-platform-environments.

# NOTE - the example includes a reference to a public key "ec2-user.pub" in the directory ".ssh/${terraform.workspace}". Amend this directory
# as required to refer to the public part of the key pair to be used.


#------------------------------------------------------------------------------
# Keypair for ec2-user
#------------------------------------------------------------------------------
resource "aws_key_pair" "ec2-user" {
  key_name   = "ec2-user"
  public_key = file(".ssh/${terraform.workspace}/ec2-user.pub")
  tags = merge(
    local.tags,
    {
      Name = "${local.application_name}-ec2-user"
    },
  )
}


# This locals block contains variables required to create ec2 instances using the module.

locals {

  app_name = "ec2-test" # This is used as the primary label to desribe the resources.
  business_unit       = var.networking[0].business-unit
  region              = "eu-west-2"


  # This local is used by the module variable "instance".  
  instance = {
    disable_api_termination      = false
    key_name                     = try(aws_key_pair.ec2-user.key_name)
    monitoring                   = false
    metadata_options_http_tokens = "required"
    vpc_security_group_ids       = try([aws_security_group.example_ec2_sg.id])
  }


  # This local block contains the variables required to build one of more ec2s. 
  ec2_test = {

    tags = {
      component = "example-ec2-build-using-module"
    }


    # The object ec2_instances requires one or more sub objects to be created. The key of each object (e.g. example-1) will
    # be used for 'Name' tag values as well as prefix of R53 records (see above). Each contains an example of user-data and adds a 2nd
    # ebs volume to the ec2 using the ebs_volumes local.

    ec2_instances = {

      example-1 = { # The first ec2.
        tags = {
          server-type = "private"
          description = "ec2-example-1"
          monitored   = false
          os-type     = "Linux"
          component   = "ndh"
          environment = "development"
        }
        ebs_volumes = {
          "/dev/sdf" = { size = 20, type = "gp3" }
        }
        ami_name  = "amzn2-ami-kernel-5.10-hvm-2.0.20240131.0-x86_64-gp2" # Note the module requires the AMI name, not the ID.
        ami_owner = "137112412989"
        subnet_id = data.aws_subnet.private_subnets_a.id # This example creates the ec2 in a private subnet.
        availability_zone = "eu-west-2a"
        instance_type = "t3.small"
        user_data = <<EOF
            #!/bin/bash
            yum update -y
            yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
            systemctl status amazon-ssm-agent
            yum install httpd -y
            systemctl start httpd
            EOF
        # Route53 DNS Records - the prefix for these is derrived from key of the ec2_instances list below.
        route53_records = {
          create_internal_record = true
          create_external_record = false
        }
      }

      example-2 = { # The second ec2.
        tags = {
          server-type = "private"
          description = "ec2-example-2"
          monitored   = false
          os-type     = "Linux"
          component   = "ndh"
          environment = "development"
        }
        ebs_volumes = {
          "/dev/sdf" = { size = 20, type = "gp3" }
        }
        ami_name  = "amzn2-ami-kernel-5.10-hvm-2.0.20240131.0-x86_64-gp2"
        ami_owner = "137112412989"
        subnet_id = data.aws_subnet.private_subnets_b.id
        availability_zone = "eu-west-2b"
        instance_type = "t3.micro"
        user_data = <<EOF
            #!/bin/bash
            yum update -y
            yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
            systemctl status amazon-ssm-agent
            EOF
        route53_records = {
          create_internal_record = false
          create_external_record = false
        }
      }

    }
  
  }

  # This local provides a list of ingress and egress rules for the ec2 security group.

  example_ec2_sg_ingress_rules = {

    TCP_22 = {
      from_port = 22
      to_port = 22
      protocol = "TCP"
      cidr_block = data.aws_vpc.shared.cidr_block
    }

    TCP_443 = {
      from_port = 443
      to_port = 443
      protocol = "TCP"
      cidr_block = data.aws_vpc.shared.cidr_block
    }

  }

  example_ec2_sg_egress_rules = {

    TCP_ALL = {
      from_port = 1
      to_port = 65000
      protocol = "TCP"
      cidr_block = "0.0.0.0/0"
    }

  }

  # create list of common managed policies that can be attached to ec2 instance profiles
  ec2_common_managed_policies = [
    aws_iam_policy.ec2_common_policy.arn
  ]

}




# This item is used to combine emultiple policy documents though for this example only one policy document is created.
data "aws_iam_policy_document" "ec2_common_combined" {
  source_policy_documents = [
    data.aws_iam_policy_document.ec2_policy.json  
  ]
}


# This policy document is added as an example. Note that the module does not support access via AWS Session Manager.
data "aws_iam_policy_document" "ec2_policy" {
  statement {
    sid    = "AllowSSMAccess"
    effect = "Allow"
    actions = [
      "ssm:StartSession",
      "ssm:ResumeSession",
      "ssm:TerminateSession",
      "ssmmessages:CreateControlChannel",
      "ssmmessages:CreateDataChannel",
      "ssmmessages:OpenControlChannel",
      "ssmmessages:OpenDataChannel",
      "ec2messages:AcknowledgeMessage",
      "ec2:DescribeInstances"
    ]
    resources = ["*"] #tfsec:ignore:aws-iam-no-policy-wildcards
  }
}


# This is the main call to the module. Note the for_each loop.
module "ec2_instance" {
  source = "github.com/ministryofjustice/modernisation-platform-terraform-ec2-instance?ref=v2.4.1"

  providers = {
    aws.core-vpc = aws.core-vpc # core-vpc-(environment) holds the networking for all accounts
  }
  for_each                      = try(local.ec2_test.ec2_instances, {}) # Iterates through each element of ec2_instances.
  application_name              = local.app_name
  name                          = each.key
  ami_name                      = each.value.ami_name
  ami_owner                     = try(each.value.ami_owner, "core-shared-services-production")
  instance                      = merge(local.instance, lookup(each.value, "instance", { disable_api_stop = false, instance_type = try(each.value.instance_type) }))
  ebs_volumes_copy_all_from_ami = try(each.value.ebs_volumes_copy_all_from_ami, true)
  ebs_kms_key_id                = "" # Suggest there that the default ebs key for the account is used instead as a default entry.
  ebs_volume_config             = lookup(each.value, "ebs_volume_config", {})
  ebs_volumes                   = lookup(each.value, "ebs_volumes", {})
  route53_records               = lookup(each.value, "route53_records", {})
  availability_zone        = each.value.availability_zone
  subnet_id                = each.value.subnet_id
  iam_resource_names_prefix = local.app_name
  instance_profile_policies = local.ec2_common_managed_policies
  business_unit            = local.business_unit
  environment              = local.environment
  region                   = local.region
  tags                     = merge(local.tags, local.ec2_test.tags, try(each.value.tags, {}))
  account_ids_lookup       = local.environment_management.account_ids
  user_data_raw            = try(each.value.user_data, "")
  cloudwatch_metric_alarms = {}
}


###### EC2 Security Groups ######

# Creates a single security group to be used by all the ec2s defined here with ingress & egress rules using the 'example_ec2_sg_ingress_rules' local.

resource "aws_security_group" "example_ec2_sg" {
  name        = "example_ec2_sg"
  description = "Controls access to EC2"
  vpc_id      = data.aws_vpc.shared.id
  tags = merge(local.tags,
    { Name = lower(format("sg-%s-%s-example", local.application_name, local.environment)) }
  )
}

resource "aws_security_group_rule" "ingress_traffic" {
  for_each          = local.example_ec2_sg_ingress_rules
  description       = format("Traffic for %s %d", each.value.protocol, each.value.from_port)
  from_port         = each.value.from_port
  protocol          = each.value.protocol
  security_group_id = aws_security_group.example_ec2_sg.id
  to_port           = each.value.to_port
  type              = "ingress"
  cidr_blocks       = [each.value.cidr_block]
}

resource "aws_security_group_rule" "egress_traffic" {
  for_each                 = local.example_ec2_sg_egress_rules
  description              = format("Outbound traffic for %s %d", each.value.protocol, each.value.from_port)
  from_port                = each.value.from_port
  protocol                 = each.value.protocol
  security_group_id        = aws_security_group.example_ec2_sg.id
  to_port                  = each.value.to_port
  type                     = "egress"
  cidr_blocks       = [each.value.cidr_block]
}

##### IAM Policies #####

# Creates a single managed policy using the combined policy documents.
resource "aws_iam_policy" "ec2_common_policy" {
  name        = "ec2-common-policy"
  path        = "/"
  description = "Common policy for all ec2 instances"
  policy      = data.aws_iam_policy_document.ec2_common_combined.json
  tags = merge(
    local.tags,
    {
      Name = "ec2-common-policy"
    },
  )
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
