
resource "aws_internet_gateway" "igw-terraform-123"{
    vpc_id=var.vpc_id
}