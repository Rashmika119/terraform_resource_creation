provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "terraform-123-key" {
  key_name   = var.key_name_value
  public_key = file(var.public_key_value)
}