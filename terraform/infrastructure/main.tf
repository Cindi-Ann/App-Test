terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  //get from bootstrap
#   backend "s3" {
#     bucket = "mybucket-abc12345"  # hardcoded after bootstrap
#     key    = "terraform.tfstate"
#     region = "us-east-1"
#     encrypt = true
#   }
}

provider "aws" {
  region = var.aws_region
}

data "aws_ssm_parameter" "db_password" {
  name = "/db_config/db_password"
}

output "db_password" {
  description = "Database password :("
  value     = data.aws_ssm_parameter.db_password.value
  sensitive = false
}