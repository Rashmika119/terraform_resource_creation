
provider "aws" {
region="us-east-1"
}

resource "aws_instance" "example"{
  ami                     = var.ami_value
  instance_type           = var.inastance_type_value
  subnet_id               = var.subnet_id_value
  key_name = var.key_name_value
  tags={Name=var.name_value}
}



