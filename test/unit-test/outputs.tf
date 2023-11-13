output "securtiy-group-id" {
  description = "The sg"
  value       = try(aws_security_group.test.arn, "")
}
output "key-pair" {
  description = "Key Pair"
  value       = try(aws_key_pair.ec2-terratest-user.arn, "")
}

output "iam-policy" {
  description = "IAM Policy"
  value       = try(aws_iam_policy.ec2_test_common_policy.arn, "")
}

output "ami-name" {
  description = "Ami Name"
  value       = try(local.ec2_test.ec2_test_instances.example-test-instance-1.ami_name, "")
}

output "kms-key" {
  description = "KMS Key"
  value       = try(aws_iam_policy.ec2_test_common_policy.arn, "")
}

output "subnet-arn" {
  description = "Subnet ARN"
  value       = try(data.aws_subnet.private_subnets_a.arn, "")
}

output "backup-tag-input" {
  description = "backup tag set through var.tags input"
  value       = local.ec2_test.tags.backup
}

output "backup-instance-1-tag-input" {
  description = "backup tag set through var.instance.tags input"
  value       = local.ec2_test.ec2_test_instances.example-test-instance-1.tags.backup
}

output "ebs_block_device_inline-instance-1-input" {
  description = "var.instance.ebs_block_device_inline input"
  value       = local.ec2_test.ec2_test_instances.example-test-instance-1.ebs_block_device_inline
}

output "backup-instance-1-ebs-volume-tag-input" {
  description = "backup tag set through var.ebs_volume_tags input"
  value       = local.ec2_test.ec2_test_instances.example-test-instance-1.ebs_volume_tags.backup
}

output "backup-instance-2-tag-input" {
  description = "backup tag set through var.instance.tags input"
  value       = local.ec2_test.ec2_test_instances.example-test-instance-2.tags.backup
}

output "ebs_block_device_inline-instance-2-input" {
  description = "var.instance.ebs_block_device_inline input"
  value       = local.ec2_test.ec2_test_instances.example-test-instance-2.ebs_block_device_inline
}

output "backup-instance-2-ebs-volume-tag-input" {
  description = "backup tag set through var.ebs_volume_tags input"
  value       = local.ec2_test.ec2_test_instances.example-test-instance-2.ebs_volume_tags.backup
}

output "applied-instance-backup-tag" {
  description = "backup tag applied on the instance"
  value       = [ for instance in module.ec2_test_instance : instance.aws_instance.tags.backup ]
}

output "applied-backup-root-inline-tag" {
  description = "backup tag applied inline on the instance root block device"
  value       = [ for instance in module.ec2_test_instance : instance.aws_instance.root_block_device[0].tags.backup ]
}

output "applied-backup-ebs-inline-tag" {
  description = "backup tag applied inline on the instance ebs block device"
  value       = [ for instance in module.ec2_test_instance : [ for ebs_block in instance.aws_instance.ebs_block_device : ebs_block.tags.backup ] ]
}

output "applied-backup-ebs-tag" {
  description = "backup tag applied on the ebs_volume"
  value       = [ for instance in module.ec2_test_instance : [for ebs_device in instance.aws_ebs_volume : ebs_device.tags.backup] ]
}
