output "state_bucket_name" {
  description = "Name of the S3 bucket for Terraform state"
  value       = aws_s3_bucket.terraform_state.bucket
}

output "state_bucket_arn" {
  description = "ARN of the S3 bucket for Terraform state"
  value       = aws_s3_bucket.terraform_state.arn
}

output "github_actions_role_arn" {
  description = "ARN of the IAM role for GitHub Actions"
  value       = aws_iam_role.github_actions.arn
}

output "oidc_provider_arn" {
  description = "ARN of the OIDC provider for GitHub Actions"
  value       = aws_iam_openid_connect_provider.github_actions.arn
}

output "backend_configuration" {
  description = "Backend configuration to use in other Terraform projects"
  value = {
    bucket  = aws_s3_bucket.terraform_state.bucket
    key     = "terraform.tfstate"
    region  = var.aws_region
    encrypt = true
  }
}

output "github_actions_workflow_config" {
  description = "Configuration for GitHub Actions workflow"
  value = {
    role_arn    = aws_iam_role.github_actions.arn
    aws_region  = var.aws_region
    bucket_name = aws_s3_bucket.terraform_state.bucket
  }
}