terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  profile = "default"
  region = "us-east-1"
}

resource "aws_instance" "test-server-1" {
  ami           = "ami-005fc0f236362e99f"
  instance_type = "t3.micro"

  tags = {
    Name = "TestEC2Instance1"
  }
}

resource "aws_instance" "test-server-2" {
  ami           = "ami-005fc0f236362e99f"
  instance_type = "t2.micro"

  tags = {
    Name = "TestEC2Instance2"
  }
}
