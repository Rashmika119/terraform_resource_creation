
provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "terraform-123-vpc" {
  cidr_block = var.cidr
}