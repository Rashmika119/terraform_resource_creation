provider "aws"{
    region="us-east-1"
}
module "key_pair"{
    source="./modules/key_pair"
    key_name_value="terraform-123"
    public_key_value="/c/Users/Rashmika Nethsarani/.ssh/id_rsa"
}

module "aws_vpc"{
    source="./modules/aws_vpc"
}
module "subnet"{
    source="./modules/subnet"
    vpc_id=module.aws_vpc.vpc_id
}

module "internetgateway"{
    source="./modules/internet_gateway"
    vpc_id=module.aws_vpc.vpc_id
}
module "route_table"{
    source="./modules/route_table"
    vpc_id=module.aws_vpc.vpc_id
    igw_id=module.internetgateway.igw_id
}

module "route+table_association"{
    source="./modules/aws_route_table_association"
    route_table_id=module.route_table.route_table_id
    subnet_id=module.subnet.subnet_id
}

module "security_group"{
    source="./modules/aws_security_group"
    vpc_id=module.aws_vpc.vpc_id
}

module "ec2_instance"{
    source="./modules/ec2_instance"
    ami_value = "ami-020cba7c55df1f615"
    inastance_type_value="t2.micro"
    subnet_id=module.subnet.subnet_id
    key_pair_id=module.key_pair.key_name
    name_value = "terraform-123-example"
    security_group_id=module.security_group.security_group_id
}


