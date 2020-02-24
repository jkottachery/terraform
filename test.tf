provider "aws" {
  region = "us-east-1"
}

# Define  VPC
resource "aws_vpc" "dev" {
  cidr_block       = "20.20.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "sandbox-development-VPC"
  }
}