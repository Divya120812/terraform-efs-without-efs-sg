output "efs_sg_id" {
  description = "EFS security group ID"
  value       = aws_security_group.efs.id
}
