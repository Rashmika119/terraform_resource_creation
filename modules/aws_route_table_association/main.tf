resource aws_route_table_association "terraform-123-association"{
    subnet_id=var.subnet_id
    route_table_id=var.route_table_id
}