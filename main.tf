provider "aws"{
    region="us=east-1"
}

module "ec2_instance"{
    source="./modules/ec2_instance"
    ami_value = "ami-020cba7c55df1f615"
    inastance_type_value="t2.micro"
    subnet_id_value="subnet-067efbd3d08ddb79e"
    key_name_value="terraform-123"
    name_value = "terraform-123-example"
    

}

module "S3_bucket"{
    source="./modules/S3_bucket"
    bucket_value="terraform-123-state"
}

//"ami-020cba7c55df1f615"
//"t2.micro"
//"subnet-067efbd3d08ddb79e"
//"terraform-123"