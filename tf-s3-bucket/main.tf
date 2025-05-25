terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.0.0"
}

provider "aws" {
  region = "us-east-2"
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  tags = {
    Name    = var.bucket_name
    Project = "Terraform"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.this.bucket
}
