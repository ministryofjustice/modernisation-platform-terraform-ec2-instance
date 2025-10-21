variable "business_unit" {
  type        = string
  description = "This corresponds to the VPC in which the application resides"
  default     = "hmpps"
  nullable    = false
}

variable "application_name" {
  type        = string
  description = "The name of the application.  This will be name of the environment in Modernisation Platform"
  default     = "nomis"
  nullable    = false
  validation {
    condition     = can(regex("^[A-Za-z0-9][A-Za-z0-9-.]{1,61}[A-Za-z0-9]$", var.application_name))
    error_message = "Invalid name for application supplied in variable app_name."
  }
}

variable "environment" {
  type        = string
  description = "Application environment - i.e. the terraform workspace"
}

variable "region" {
  type        = string
  description = "Destination AWS Region for the infrastructure"
  default     = "eu-west-2"
}

variable "availability_zone" {
  type        = string
  description = "The availability zone in which to deploy the infrastructure"
  default     = "eu-west-2a"
  nullable    = false
}

variable "subnet_id" {
  type        = string
  description = "The subnet id in which to deploy the infrastructure"
}

variable "tags" {
  type        = map(any)
  description = "Default tags to be applied to resources.  Additional tags can be added to EBS volumes or EC2s, see instance.tags and ebs_volume_tags variables."
  default     = {}
}

variable "account_ids_lookup" {
  description = "A map of account names to account ids that can be used for AMI owner"
  type        = map(any)
  default     = {}
}

variable "ami_name" {
  type        = string
  description = "Name of AMI. EBS volumes copied automatically from AMI. Or set to null and use instance.ami, ebs_volumes and ebs_volume_root_name"
}

variable "ami_owner" {
  type        = string
  description = "Account name or id where ami_name is found. Only set if AMI is in a different account."
  default     = "self"
  nullable    = false
}

variable "name" {
  type        = string
  description = "Provide a unique name for the instance"
}

variable "instance" {
  description = "EC2 instance settings, see aws_instance documentation"
  type = object({
    associate_public_ip_address  = optional(bool, false)
    ami                          = optional(string) # use ami_name instead unless ami has been deleted
    disable_api_termination      = optional(bool)
    disable_api_stop             = optional(bool)
    instance_type                = string
    key_name                     = optional(string)
    metadata_endpoint_enabled    = optional(string, "enabled")
    metadata_options_http_tokens = optional(string, "required")
    monitoring                   = optional(bool, true)
    ebs_block_device_inline      = optional(bool, false)
    vpc_security_group_ids       = optional(list(string))
    private_dns_name_options = optional(object({
      enable_resource_name_dns_aaaa_record = optional(bool)
      enable_resource_name_dns_a_record    = optional(bool)
      hostname_type                        = string
    }))
    tags = optional(map(string), {})
  })
}

variable "user_data" {
  description = "User data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see user_data_raw instead"
  type        = string
  default     = null
}

variable "user_data_raw" {
  description = "Base64 encoded user data, script or cloud formation template"
  type        = string
  default     = null
}

variable "user_data_cloud_init" {
  description = "Use this instead of user_data_raw to run multiple scripts using cloud_init"
  type = object({
    args    = optional(map(string))
    scripts = optional(list(string))
    write_files = optional(map(object({
      path        = string
      owner       = string
      permissions = string
    })), {})
  })
  default = null
}

variable "ebs_volumes_copy_all_from_ami" {
  description = "If true, ensure all volumes in AMI are also present in EC2.  If false, only create volumes specified in ebs_volumes var"
  type        = bool
  default     = true
}

variable "ebs_kms_key_id" {
  description = "KMS Key to use for EBS volumes if not explicitly set in ebs_volumes variable"
  type        = string
  default     = null
}

variable "ebs_volume_config" {
  description = "EC2 volume configurations, where key is a label, e.g. flash, which is assigned to the disk in ebs_volumes.  All disks with same label have the same configuration.  If not specified, use values from the AMI.  If total_size specified, the volume size is this divided by the number of drives with the given label"
  type = map(object({
    iops       = optional(number)
    throughput = optional(number)
    total_size = optional(number)
    type       = optional(string)
    kms_key_id = optional(string)
  }))
  default = {}
}

variable "ebs_volume_root_name" {
  description = "The name of the root volume. Normally derived from AMI but set this if the original AMI is missing"
  type        = string
  default     = null
}

variable "ebs_volumes" {
  description = "EC2 volumes, see aws_ebs_volume for documentation.  key=volume name, value=ebs_volume_config key.  label is used as part of the Name tag"
  type = map(object({
    label       = optional(string)
    snapshot_id = optional(string)
    iops        = optional(number)
    throughput  = optional(number)
    size        = optional(number)
    type        = optional(string)
    kms_key_id  = optional(string)
  }))
  default = {}
}

variable "ebs_volume_tags" {
  description = "Additional tags to apply to ebs volumes"
  type        = map(string)
  default     = {}
}

variable "route53_records" {
  description = "Optionally create internal and external DNS records"
  type = object({
    create_internal_record = bool
    create_external_record = bool
  })
  default = {
    create_internal_record = false
    create_external_record = false
  }
}

variable "iam_resource_names_prefix" {
  type        = string
  description = "Prefix IAM resources with this prefix, e.g. ec2-database"
  default     = "ec2"
}

variable "instance_profile_policies" {
  type        = list(string)
  description = "A list of any additional policies to attach to the instance profile above what's set in default_policy_arn"
  default     = []
}

variable "ssm_parameters_prefix" {
  type        = string
  description = "Optionally prefix ssm parameters with this prefix.  Add a trailing /"
  default     = ""
}
variable "secretsmanager_secrets_prefix" {
  type        = string
  description = "Optionally prefix secretsmanager secrets with this prefix.  Add a trailing /"
  default     = ""
}

variable "ssm_parameters" {
  description = "A map of SSM parameters to create. Set a specific value or a randomly generated value.  If neither random or value are set, a placeholder value is created which can be updated outside of terraform"
  type = map(object({
    description = optional(string)
    type        = optional(string, "SecureString")
    kms_key_id  = optional(string)
    random = optional(object({
      length  = number
      special = optional(bool)
    }))
    value = optional(string)
  }))
  default = null
}

variable "secretsmanager_secrets" {
  description = "A map of secretsmanager secrets to create. Set a specific value or a randomly generated value.  If neither random or value are set, a placeholder value is created which can be updated outside of terraform"
  type = map(object({
    description             = optional(string)
    kms_key_id              = optional(string)
    recovery_window_in_days = optional(number)
    random = optional(object({
      length  = number
      special = optional(bool)
    }))
    value = optional(string)
  }))
  default = null
}

variable "cloudwatch_metric_alarms" {
  description = "Map of cloudwatch metric alarms.  The alarm name is set to the ec2 instance name plus the map key."
  type = map(object({
    comparison_operator = string
    evaluation_periods  = number
    metric_name         = string
    namespace           = string
    period              = number
    statistic           = string
    threshold           = number
    alarm_actions       = list(string)
    ok_actions          = optional(list(string), [])
    actions_enabled     = optional(bool, false)
    alarm_description   = optional(string)
    datapoints_to_alarm = optional(number)
    treat_missing_data  = optional(string, "missing")
    dimensions          = optional(map(string), {})
  }))
  default = {}
}

variable "default_policy_arn" {
  description = "Default policy ARN to attach"
  type        = string
  default     = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}
