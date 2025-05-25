variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "eu-west-1"
}

variable "bucket_name" {
  description = "Base name for the S3 bucket (will have random suffix appended)"
  type        = string
  default     = "terraform-state"
}

variable "github_repository" {
  description = "GitHub repo that can assume the role (format: owner/repo)"
  type        = string
  default     = "Cindi-Ann/App-Test"
}

variable "github_actions_role_name" {
  description = "Name for the GitHub Actions IAM role"
  type        = string
  default     = "github-actions-terraform"
}

variable "terraform_policy_name" {
  description = "Name for the Terraform state policy"
  type        = string
  default     = "terraform-state-policy"
}

variable "infrastructure_policy_name" {
  description = "Name for the infrastructure management policy"
  type        = string
  default     = "infrastructure-policy"
}
