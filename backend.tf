terraform {
  backend "s3" {
    bucket = "terraform-123-state"
    key    = "rash/terraform.tfstate"
    region = "us-east-1"
    encrypt=true
    dynamodb_table="terraform-lock"
  }
}
