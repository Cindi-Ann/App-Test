variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default = "eu-west-1"
}

variable "bucket_name" {
  description = "Base name for the S3 bucket that stores state"
  type        = string
}