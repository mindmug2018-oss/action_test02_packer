# terraform_example/test08_autoscale/provider.tf

# 테라폼 및 프로바이더 설정
terraform {
  required_version = "~> 1.14.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket = "db-backup-storage-9fbb529c"
    key = "test02/terraform.tfstate"
    region = "ap-northeast-2"
    dynamodb_table = "terraform-lock-test02"
    encrypt = true
    }
}

provider "aws" {
  region = var.region
}

