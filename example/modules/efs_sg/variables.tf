variable "name" {
  description = "Name prefix for the EFS SG"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the EFS security group will be created"
  type        = string
}

variable "app_sg_ids" {
  description = "List of application security group IDs that should be allowed NFS access to EFS"
  type        = list(string)
}

variable "efs_egress_cidr_blocks" {
  description = "CIDR blocks for EFS SG egress"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
