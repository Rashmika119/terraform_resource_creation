
provider "aws" {
region="us-east-1"
}

resource "aws_s3_bucket" "state_holder"{
bucket=var.bucket_value
}
