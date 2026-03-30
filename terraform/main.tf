terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "security_group" {
  source       = "./modules/security"
  project_name = var.project_name
  environment  = var.environment
}

module "ec2" {
  source            = "./modules/ec2"
  project_name      = var.project_name
  environment       = var.environment
  instance_type     = var.instance_type
  security_group_id = module.security_group.sg_id
  key_name          = var.key_name
}

module "s3" {
  source       = "./modules/s3"
  project_name = var.project_name
  environment  = var.environment
}
