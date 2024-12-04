terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile = "default"
}

resource "aws_vpc" "my_vpc_1" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "prod"
    }
}

resource "aws_subnet" "subnet-1" {
    vpc_id = aws_vpc.my_vpc_1.id
    cidr_block = "10.0.1.0/24"

    tags = {
      Name = "prod-subnet-1"
    }
  
}
