resource "aws_efs_file_system" "this" {
  creation_token   = var.name
  performance_mode = var.performance_mode
  throughput_mode  = var.throughput_mode
  encrypted        = var.encrypted

  tags = merge(
    var.tags,
    {
      Name = var.name
    }
  )
}

# Create one mount target per subnet  
# EC2 instances mount EFS through mount targets in their Availability Zone.
# AWS requires at least one mount target per AZ where EC2 instances will access EFS.
# If you have multiple subnets (one per AZ), Terraform creates a mount target in each.
# EC2 instances in those subnets can mount EFS without cross-AZ traffic.

resource "aws_efs_mount_target" "this" {
  for_each = toset(var.subnet_ids)  # creating one mount target per subnet

  file_system_id  = aws_efs_file_system.this.id
  subnet_id       = each.value
  security_groups = [var.efs_security_group_id]
}