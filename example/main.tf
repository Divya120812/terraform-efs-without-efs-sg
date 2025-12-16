# root module

module "efs" {
  source = "../"

  name                     = "${var.project_name}-${var.environment}-efs"
  vpc_id                   = var.vpc_id
  subnet_ids               = var.private_subnet_ids
  # pass the externally-managed EFS security group id (created in module.efs_sg)
  efs_security_group_id = module.efs_sg.efs_sg_id

  performance_mode = "generalPurpose"
  throughput_mode  = "bursting"  #default mode scales automatically with the size of your file system.
  encrypted        = true

  tags = {
    Project     = var.project_name
    Environment = var.environment
  }
}

# create efs security group

module "efs_sg" {
  source = "./modules/efs_sg"
  name   = "${var.project_name}-${var.environment}"
  vpc_id = var.vpc_id
  app_sg_ids = var.app_sg_ids
  # optional: override egress blocks
  # efs_egress_cidr_blocks = ["10.0.0.0/16"]
}

