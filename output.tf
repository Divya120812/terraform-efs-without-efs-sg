output "efs_id" {
  description = "ID of the EFS file system"
  value       = aws_efs_file_system.this.id
}

output "efs_arn" {
  description = "ARN of the EFS file system"
  value       = aws_efs_file_system.this.arn
}

output "efs_dns_name" {
  description = "DNS name of the EFS file system"
  value       = aws_efs_file_system.this.name
}

output "security_group_id" {
  description = "Security group ID attached to EFS mount targets (provided by caller)"
  value       = var.efs_security_group_id
}