resource "aws_security_group" "efs" {
  name        = "${var.name}-efs-sg"
  description = "EFS mount target security group"
  vpc_id      = var.vpc_id

  ingress {
    description     = "Allow NFS from application security groups"
    from_port       = 2049
    to_port         = 2049
    protocol        = "tcp"
    security_groups = var.app_sg_ids
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.efs_egress_cidr_blocks
  }

  tags = {
    Name = "${var.name}-efs-sg"
  }
}
