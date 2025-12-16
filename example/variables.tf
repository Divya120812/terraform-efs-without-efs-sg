# variable "aws_region" {
#   description = "AWS region"
#   type        = string
#   default     = "eu-west-2"
# } 

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Environment name (e.g., dev, prod)"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where EFS will be created"
  type        = string
}

variable "private_subnet_ids" {
  description = "Private subnet IDs for EFS mount targets"
  type        = list(string)
}

variable "app_sg_ids" {
  description = "List of existing application security group IDs that will mount EFS. Provide one or more IDs; this module will not create app SGs."
  type        = list(string)
  validation {
    condition     = length(var.app_sg_ids) > 0
    error_message = "You must provide at least one application security group id in 'app_sg_ids'."
  }
}

# variable "region" {
#   description = "AWS region"
#   type        = string
# }

# variable "access_key" {
#   description = "AWS access key"
#   type        = string  
#   sensitive = true  
  
# }

# variable "secret_key " {
#   description = "AWS secret key"
#   type        = string              
#   sensitive = true
# }

  