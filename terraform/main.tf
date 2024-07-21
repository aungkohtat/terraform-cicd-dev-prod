terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 5.0"
    }
  }

  required_version = ">= 1.7.5"

  backend "s3" {
    bucket         = var.backet_name
    key            = "terraform.tfstate"
    region         = var.region
  }
}

provider "aws" {
  region = var.region
}

# Create EC2 instance
resource "aws_instance" "demo_instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  tags = {
    Name = "demo-instance01"
  }
}

