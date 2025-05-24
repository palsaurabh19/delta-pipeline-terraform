provider "aws" {
  region = "us-east-1"
}

module "eks" {
  source = "./eks"
}

module "rds" {
  source = "./rds"
}

module "s3" {
  source = "./s3"
}

module "spark" {
  source = "./spark"
}
