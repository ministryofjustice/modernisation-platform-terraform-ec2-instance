module "module_test" {
  source = "../../"
  tags   = local.tags

  providers = {
    aws.core-vpc = aws.core-vpc # core-vpc-(environment) holds the networking for all accounts
  }

  ami_name                  = "RHEL-6.10_HVM-*"
  ebs_volume_config         = local.ec2_test.ebs_volume_config
  ebs_volumes               = local.ec2_test.ebs_volumes
  environment               = "test"
  instance                  = {
      disable_api_termination      = false
      instance_type                = "t3.medium"
      key_name                     = ""
      monitoring                   = false
      metadata_options_http_tokens = "required"
      vpc_security_group_ids       = [aws_security_group.test.id]
    }
  instance_profile_policies = []
  name                      = "test"
  route53_records           = {
      create_internal_record = true
      create_external_record = false
    }
  subnet_id                 = var.networking[0].set
}


