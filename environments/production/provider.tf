#
# Provider
#   * https://registry.terraform.io/providers/hashicorp/aws/latest/docs
#
provider "aws" {
  # access_key = "${var.aws_access_key}"
  # secret_key = "${var.aws_secret_key}"
  profile = "${var.profile}"
  region = "${var.region}"
}
