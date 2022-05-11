#
# aws_vpc
#   * https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc
#
resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  enable_dns_support = true
  enable_dns_hostnames = false

  tags = {
    Name = "${var.service}-vpc"
  }
}

#
# aws_subnet
#   * https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/default_subnet
#
resource "aws_subnet" "subnet_northeast_1a" {
  vpc_id = aws_vpc.main_vpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "ap-northeast-1a"

  tags = {
    Name = "${var.service}-subnet-1"
  }
}

resource "aws_subnet" "subnet_northeast_1c" {
  vpc_id = aws_vpc.main_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-northeast-1c"

  tags = {
    Name = "${var.service}-subnet-2"
  }
}

#
# aws_route_table
#   * https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/default_route_table
#
resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.internet_gateway_id
  }

  tags = {
    Name = "${var.service}-route-table"
  }
}
