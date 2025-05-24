module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "8.0.0"  # Compatible with Terraform 1.12
  cluster_name    = "delta-cluster"
  cluster_version = "1.27"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
  enable_irsa = true

  worker_groups = [
    {
      instance_type = "t3.large"
      asg_desired_capacity = 2
    }
  ]
}
