# EFS SG module

Creates an EFS mount-target security group and allows NFS (TCP/2049) from provided application SG IDs.

Inputs:
- `name`, `vpc_id`, `app_sg_ids`, `efs_egress_cidr_blocks`

Outputs:
- `efs_sg_id`
