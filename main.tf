terraform {
  backend "remote" {
    organization = "Lee-personal-project"
    workspaces {
      name = "cloudwatch-admin"
    }
  }
  # AWS Provider의 버젼
  required_providers {
    aws = {
        # 최소한의 요구사항
        version = ">= 4.25.0"
        #출처
        source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.region
}

