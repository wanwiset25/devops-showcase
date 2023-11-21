locals {
  name = "showcase-cluster"
  region = "ap-northeast-2"

  vpc_cidr = "10.25.0.0/16"
  azs = ["ap-northeast-2a", "ap-northeast-2b"]

  public_subnets  = ["10.24.1.0/24", "10.24.2.0/24"]
  private_subnets = ["10.24.3.0/24", "10.24.4.0/24"]
  intra_subnets   = ["10.24.5.0/24", "10.24.6.0/24"]

  tags = {
    Example = local.name
  }
}