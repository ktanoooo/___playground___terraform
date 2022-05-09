#
# aws_route_table
#   * https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/default_route_table
#
resource "aws_route_table" "route_table" {
  vpc_id = "${aws_vpc.main_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.internet_gateway_id
  }

  tags {
    Name = "${var.service}-route-table"
  }
}
