#
# aws_vpc
#   * https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc
#
resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  enable_dns_support = "true"
  enable_dns_hostnames = "false"

  tags = {
    Name = "${var.service}-vpc"
  }
}
