#
# aws_subnet
#   * https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/default_subnet
#
resource "aws_subnet" "subnet_northeast_1a" {
  vpc_id = var.vpc_id
  cidr_block = "10.0.0.0/24"
  availability_zone = "ap-northeast-1a"

  tags = {
    Name = "${var.service}-subnet-1"
  }
}

resource "aws_subnet" "subnet_northeast_1c" {
  vpc_id = var.vpc_id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-northeast-1c"

  tags = {
    Name = "${var.service}-subnet-2"
  }
}
