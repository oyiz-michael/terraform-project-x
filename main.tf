provider "aws" {
  version = "~> 4.0"
  region = var.region
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "tf-test-vpc"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_network_interface" "tf-test" {
  subnet_id   = aws_subnet.my_subnet.id
  private_ips = ["172.16.10.100"]

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_instance" "tf-test" {
  ami           = "ami-05fa00d4c63e32376" # us-east-1
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = aws_network_interface.tf-test.id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
}
# terraform