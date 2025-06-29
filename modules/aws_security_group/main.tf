
resource "aws_security_group" "web_sec_grp_terraform_123"{
    name="web"
    vpc_id=var.vpc_id

    ingress{
        description="HTTP from VPC"
        from_port=80
        to_port=80
        protocol="tcp"
        cidr_blocks=["0.0.0.0/0"]
    }
    ingress{
        description="SSH from VPC"
        from_port=22
        to_port=22
        protocol="tcp"
        cidr_blocks=["0.0.0.0/0"]
    }
    egress{
        from_port=0
        to_port=0
        protocol="-1"
        cidr_blocks=["0.0.0.0/0"]
    }

    tags={
        Name="web_sec_grp_terraform_123"
    }
}