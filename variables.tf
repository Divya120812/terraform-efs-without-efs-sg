variable "name" {
  description = "Name prefix for the EFS file system"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where EFS will be created"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs to create EFS mount targets in"
  type        = list(string)
}

variable "efs_security_group_id" {
  description = "Security group ID to attach to EFS mount targets (created externally)"
  type        = string
}

variable "performance_mode" {
  description = "EFS performance mode"
  type        = string
  default     = "generalPurpose"
}

variable "throughput_mode" {
  description = "EFS throughput mode"
  type        = string
  default     = "bursting"
}

variable "encrypted" {
  description = "Whether EFS is encrypted"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}