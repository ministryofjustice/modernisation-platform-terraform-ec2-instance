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