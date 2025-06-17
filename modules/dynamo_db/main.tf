
provider "aws"{
    region="us-east-1"
}
resource "aws_dynamodb_table" "terraform_lock" {
  name             = var.table_name
  billing_mode     = var.billing_mode_value
  hash_key         = var.hash_key_value

  attribute {
    name = var.hash_key_value
    type = "S"
  }
}

