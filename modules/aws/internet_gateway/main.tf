#
# aws_internet_gateway
#   * https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway
#
resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = var.vpc_id

  tags {
    Name = "${var.service}-internet-gateway"
  }
}
