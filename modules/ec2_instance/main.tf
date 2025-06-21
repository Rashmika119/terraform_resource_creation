
provider "aws" {
region="us-east-1"
}

resource "aws_instance" "example"{
  ami                     = var.ami_value
  instance_type           = var.inastance_type_value
  subnet_id               = var.subnet_id
  vpc_security_group_ids=[var.security_group_id.id]
  key_name = var.key_pair_id
  tags={Name=var.name_value}

  connection{
    type="ssh"
    user="ubuntu"
    private_key=file("/c/Users/Rashmika Nethsarani/.ssh/id_rsa")
    host=self.public_ip
  }
  provisioner "file"{
    source="app.py"
    destination="/home/ubumtu/app.py"
  }
  provisioner "remote-exec"{
    inline=[
      "echo 'Hello from the remote instance'",
      "sudo apt update -y",
      "sudo apt-get install -y python3-pip",
      "cd /home/ubuntu",
      "sudo pip3 install flask",
      "sudo python app.py &"

    ]
  }
}



