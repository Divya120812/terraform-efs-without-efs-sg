project_name       = "terraform-infraa"
environment        = "dev"

# The VPC where EFS and mount targets will be created
vpc_id             = "vpc-02a3e2d21c0776762"

# Private subnets (one per AZ) where EFS mount targets should be created
private_subnet_ids = ["subnet-0c24d88702e8a4c4c", "subnet-0bf98bdab89f44fc4", "subnet-0b58030c0d307ba8d"]

# Application security group IDs (the SGs of instances or services that will mount EFS)
app_sg_ids         = ["sg-07d29b5c8b41dbd29"]


