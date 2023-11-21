terraform {
  required_version = ">= 1.0.0"

  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "= 2.5.1"
    }
  }
}

provider "aws" {
  region = local.region
  access_key = local.access_key
  secret_key = local.secret_key
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

