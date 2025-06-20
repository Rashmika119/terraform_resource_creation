
resource "aws_route_table" terraform-123-route-table{
    vpc_id=var.vpc_id

    route{
        cidr_block="0.0.0.0/0"
        gateway_id=var.igw_id
    }

}