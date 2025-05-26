variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default = "eu-west-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidr_a" {
  description = "CIDR block for subnet A"
  default     = "10.0.1.0/24"
}

variable "subnet_cidr_b" {
  description = "CIDR block for subnet B"
  default     = "10.0.2.0/24"
}

variable "subnet_availability_zone_a" {
  description = "Availability zone for subnet A"
  default     = "eu-west-1a"
}

variable "subnet_availability_zone_b" {
  description = "Availability zone for subnet B"
  default     = "eu-west-1b"
}

variable "db_name" {
    type = string
    default = "cinditestdb"
}

variable "db_username" {
    default = "/db_config/db_username"
}

variable "db_password" {
    default = "/db_config/db_password"
}

