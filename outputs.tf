output "aws_instance" {
  description = "aws_instance resource"
  value       = aws_instance.this
}

output "ami_block_device_mappings" {
  description = "ami_block_device_mappings"
  value       = local.ami_block_device_mappings
}

output "ami_block_device_mappings_nonroot" {
  description = "ami_block_device_mappings_nonroot"
  value       = local.ami_block_device_mappings_nonroot
}

output "ebs_volumes_from_ami" {
  description = "ebs_volumes_from_ami"
  value       = local.ebs_volumes_from_ami
}

output "ebs_volumes_without_nulls" {
  description = "ebs_volumes_without_nulls"
  value       = local.ebs_volumes_without_nulls
}

output "ebs_volume_labels" {
  description = "ebs_volume_labels"
  value       = local.ebs_volume_labels
}

output "ebs_volume_count" {
  description = "ebs_volume_count"
  value       = local.ebs_volume_count
}

output "ebs_volumes_from_config" {
  description = "ebs_volumes_from_config"
  value       = local.ebs_volumes_from_config
}

output "ebs_volumes_swap_size" {
  description = "ebs_volumes_swap_size"
  value       = local.ebs_volumes_swap_size
}

output "ebs_volumes_swap" {
  description = "ebs_volumes_swap"
  value       = local.ebs_volumes_swap
}

output "ebs_volumes_from_config_without_nulls" {
  description = "ebs_volumes_from_config_without_nulls"
  value       = local.ebs_volumes_from_config_without_nulls
}

output "ebs_volume_names" {
  description = "ebs_volume_names"
  value       = local.ebs_volume_names
}

output "ebs_volumes" {
  description = "ebs_volumes"
  value       = local.ebs_volumes
}

output "ebs_volume_root" {
  description = "ebs_volume_root"
  value       = local.ebs_volume_root
}
output "ebs_volumes_nonroot" {
  description = "ebs_volumes_nonroot"
  value       = local.ebs_volumes_nonroot
}
