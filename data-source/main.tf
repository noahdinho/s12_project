
provider "aws" {
region = "us-east-1"

}

# data "aws_instance" "my_data1" {
#   instance_id = "i-0ada80c75fb6569f8"
# }

# resource "aws_instance" "server1" {
#   ami = data.aws_instance.my_data1.ami
#   instance_type = data.aws_instance.my_data1.instance_type
#   availability_zone = data.aws_instance.my_data1.availability_zone
#   security_groups = data.aws_instance.my_data1.security_groups
# }

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}



data "aws_ami" "amz" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm*-x86_64-ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"] # Canonical
}

resource "aws_instance" "server2" {
  ami = data.aws_ami.amz.id
  instance_type = "t2.micro"
}