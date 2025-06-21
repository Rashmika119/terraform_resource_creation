provider "aws"{
    region="us-east-1"
}
module "S3_bucket"{
    source="../modules/S3_bucket"
    bucket_value="terraform-123-state"
}

module "dynamo_db"{
    source="../modules/dynamo_db"
    table_name="terraform-lock"
    billing_mode_value="PAY_PER_REQUEST"
    hash_key_value="LockID"
}