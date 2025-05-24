module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "delta-cluster"
  cluster_version = "1.27"
  subnets         = module.vpc.private_subnets
  vpc_id          = module.vpc.vpc_id
  enable_irsa     = true

  node_groups = {
    general = {
      desired_capacity = 3
      max_capacity     = 3
      min_capacity     = 1
      instance_type    = "t3.large"
    }
  }
}
